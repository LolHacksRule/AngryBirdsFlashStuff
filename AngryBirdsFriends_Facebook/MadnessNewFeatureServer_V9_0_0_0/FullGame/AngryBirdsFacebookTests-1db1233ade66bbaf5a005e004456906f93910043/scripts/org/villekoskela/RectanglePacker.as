package org.villekoskela
{
   import flash.geom.Rectangle;
   
   public class RectanglePacker
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var mWidth:int = 0;
      
      private var mHeight:int = 0;
      
      private var mPadding:int = 8;
      
      private var mPackedWidth:int = 0;
      
      private var mPackedHeight:int = 0;
      
      private var mInsertList:Array;
      
      private var mInsertedRectangles:Vector.<IntegerRectangle>;
      
      private var mFreeAreas:Vector.<IntegerRectangle>;
      
      private var mNewFreeAreas:Vector.<IntegerRectangle>;
      
      private var mOutsideRectangle:IntegerRectangle;
      
      private var mSortableSizeStack:Vector.<SortableSize>;
      
      private var mRectangleStack:Vector.<IntegerRectangle>;
      
      public function RectanglePacker(width:int, height:int, padding:int = 0)
      {
         this.mInsertList = [];
         this.mInsertedRectangles = new Vector.<IntegerRectangle>();
         this.mFreeAreas = new Vector.<IntegerRectangle>();
         this.mNewFreeAreas = new Vector.<IntegerRectangle>();
         this.mSortableSizeStack = new Vector.<SortableSize>();
         this.mRectangleStack = new Vector.<IntegerRectangle>();
         super();
         this.mOutsideRectangle = new IntegerRectangle(width + 1,height + 1,0,0);
         this.reset(width,height,padding);
      }
      
      public function get rectangleCount() : int
      {
         return this.mInsertedRectangles.length;
      }
      
      public function get packedWidth() : int
      {
         return this.mPackedWidth;
      }
      
      public function get packedHeight() : int
      {
         return this.mPackedHeight;
      }
      
      public function get padding() : int
      {
         return this.mPadding;
      }
      
      public function reset(width:int, height:int, padding:int = 0) : void
      {
         while(this.mInsertedRectangles.length)
         {
            this.freeRectangle(this.mInsertedRectangles.pop());
         }
         while(this.mFreeAreas.length)
         {
            this.freeRectangle(this.mFreeAreas.pop());
         }
         this.mWidth = width;
         this.mHeight = height;
         this.mPackedWidth = 0;
         this.mPackedHeight = 0;
         this.mFreeAreas[0] = this.allocateRectangle(0,0,this.mWidth,this.mHeight);
         while(this.mInsertList.length)
         {
            this.freeSize(this.mInsertList.pop());
         }
         this.mPadding = padding;
      }
      
      public function getRectangle(index:int, rectangle:Rectangle) : Rectangle
      {
         var inserted:IntegerRectangle = this.mInsertedRectangles[index];
         if(rectangle)
         {
            rectangle.x = inserted.x;
            rectangle.y = inserted.y;
            rectangle.width = inserted.width;
            rectangle.height = inserted.height;
            return rectangle;
         }
         return new Rectangle(inserted.x,inserted.y,inserted.width,inserted.height);
      }
      
      public function getRectangleId(index:int) : int
      {
         var inserted:IntegerRectangle = this.mInsertedRectangles[index];
         return inserted.id;
      }
      
      public function insertRectangle(width:int, height:int, id:int) : void
      {
         var sortableSize:SortableSize = this.allocateSize(width,height,id);
         this.mInsertList.push(sortableSize);
      }
      
      public function packRectangles(sort:Boolean = true) : int
      {
         var sortableSize:SortableSize = null;
         var width:int = 0;
         var height:int = 0;
         var index:int = 0;
         var freeArea:IntegerRectangle = null;
         var target:IntegerRectangle = null;
         if(sort)
         {
            this.mInsertList.sortOn("width",Array.NUMERIC);
         }
         while(this.mInsertList.length > 0)
         {
            sortableSize = this.mInsertList.pop() as SortableSize;
            width = sortableSize.width;
            height = sortableSize.height;
            index = this.getFreeAreaIndex(width,height);
            if(index >= 0)
            {
               freeArea = this.mFreeAreas[index];
               target = this.allocateRectangle(freeArea.x,freeArea.y,width,height);
               target.id = sortableSize.id;
               this.generateNewFreeAreas(target,this.mFreeAreas,this.mNewFreeAreas);
               while(this.mNewFreeAreas.length > 0)
               {
                  this.mFreeAreas[this.mFreeAreas.length] = this.mNewFreeAreas.pop();
               }
               this.mInsertedRectangles[this.mInsertedRectangles.length] = target;
               if(target.right > this.mPackedWidth)
               {
                  this.mPackedWidth = target.right;
               }
               if(target.bottom > this.mPackedHeight)
               {
                  this.mPackedHeight = target.bottom;
               }
            }
            this.freeSize(sortableSize);
         }
         return this.rectangleCount;
      }
      
      private function filterSelfSubAreas(areas:Vector.<IntegerRectangle>) : void
      {
         var filtered:IntegerRectangle = null;
         var j:int = 0;
         var area:IntegerRectangle = null;
         var topOfStack:IntegerRectangle = null;
         for(var i:int = areas.length - 1; i >= 0; i--)
         {
            filtered = areas[i];
            for(j = areas.length - 1; j >= 0; j--)
            {
               if(i != j)
               {
                  area = areas[j];
                  if(filtered.x >= area.x && filtered.y >= area.y && filtered.right <= area.right && filtered.bottom <= area.bottom)
                  {
                     this.freeRectangle(filtered);
                     topOfStack = areas.pop();
                     if(i < areas.length)
                     {
                        areas[i] = topOfStack;
                     }
                     break;
                  }
               }
            }
         }
      }
      
      private function generateNewFreeAreas(target:IntegerRectangle, areas:Vector.<IntegerRectangle>, results:Vector.<IntegerRectangle>) : void
      {
         var area:IntegerRectangle = null;
         var topOfStack:IntegerRectangle = null;
         var x:int = target.x;
         var y:int = target.y;
         var right:int = target.right + 1 + this.mPadding;
         var bottom:int = target.bottom + 1 + this.mPadding;
         var targetWithPadding:IntegerRectangle = null;
         if(this.mPadding == 0)
         {
            targetWithPadding = target;
         }
         for(var i:int = areas.length - 1; i >= 0; i--)
         {
            area = areas[i];
            if(!(x >= area.right || right <= area.x || y >= area.bottom || bottom <= area.y))
            {
               if(!targetWithPadding)
               {
                  targetWithPadding = this.allocateRectangle(target.x,target.y,target.width + this.mPadding,target.height + this.mPadding);
               }
               this.generateDividedAreas(targetWithPadding,area,results);
               topOfStack = areas.pop();
               if(i < areas.length)
               {
                  areas[i] = topOfStack;
               }
            }
         }
         if(targetWithPadding && targetWithPadding != target)
         {
            this.freeRectangle(targetWithPadding);
         }
         this.filterSelfSubAreas(results);
      }
      
      private function generateDividedAreas(divider:IntegerRectangle, area:IntegerRectangle, results:Vector.<IntegerRectangle>) : void
      {
         var count:int = 0;
         var rightDelta:int = area.right - divider.right;
         if(rightDelta > 0)
         {
            results[results.length] = this.allocateRectangle(divider.right,area.y,rightDelta,area.height);
            count++;
         }
         var leftDelta:int = divider.x - area.x;
         if(leftDelta > 0)
         {
            results[results.length] = this.allocateRectangle(area.x,area.y,leftDelta,area.height);
            count++;
         }
         var bottomDelta:int = area.bottom - divider.bottom;
         if(bottomDelta > 0)
         {
            results[results.length] = this.allocateRectangle(area.x,divider.bottom,area.width,bottomDelta);
            count++;
         }
         var topDelta:int = divider.y - area.y;
         if(topDelta > 0)
         {
            results[results.length] = this.allocateRectangle(area.x,area.y,area.width,topDelta);
            count++;
         }
         if(count == 0 && (divider.width < area.width || divider.height < area.height))
         {
            results[results.length] = area;
         }
         else
         {
            this.freeRectangle(area);
         }
      }
      
      private function getFreeAreaIndex(width:int, height:int) : int
      {
         var free:IntegerRectangle = null;
         var best:IntegerRectangle = this.mOutsideRectangle;
         var index:int = -1;
         var paddedWidth:int = width + this.mPadding;
         var paddedHeight:int = height + this.mPadding;
         var count:int = this.mFreeAreas.length;
         for(var i:int = count - 1; i >= 0; i--)
         {
            free = this.mFreeAreas[i];
            if(free.x < this.mPackedWidth || free.y < this.mPackedHeight)
            {
               if(free.x < best.x && paddedWidth <= free.width && paddedHeight <= free.height)
               {
                  index = i;
                  if(paddedWidth == free.width && free.width <= free.height && free.right < this.mWidth || paddedHeight == free.height && free.height <= free.width)
                  {
                     break;
                  }
                  best = free;
               }
            }
            else if(free.x < best.x && width <= free.width && height <= free.height)
            {
               index = i;
               if(width == free.width && free.width <= free.height && free.right < this.mWidth || height == free.height && free.height <= free.width)
               {
                  break;
               }
               best = free;
            }
         }
         return index;
      }
      
      private function allocateRectangle(x:int, y:int, width:int, height:int) : IntegerRectangle
      {
         var rectangle:IntegerRectangle = null;
         if(this.mRectangleStack.length > 0)
         {
            rectangle = this.mRectangleStack.pop();
            rectangle.x = x;
            rectangle.y = y;
            rectangle.width = width;
            rectangle.height = height;
            rectangle.right = x + width;
            rectangle.bottom = y + height;
            return rectangle;
         }
         return new IntegerRectangle(x,y,width,height);
      }
      
      private function freeRectangle(rectangle:IntegerRectangle) : void
      {
         this.mRectangleStack[this.mRectangleStack.length] = rectangle;
      }
      
      private function allocateSize(width:int, height:int, id:int) : SortableSize
      {
         var size:SortableSize = null;
         if(this.mSortableSizeStack.length > 0)
         {
            size = this.mSortableSizeStack.pop();
            size.width = width;
            size.height = height;
            size.id = id;
            return size;
         }
         return new SortableSize(width,height,id);
      }
      
      private function freeSize(size:SortableSize) : void
      {
         this.mSortableSizeStack[this.mSortableSizeStack.length] = size;
      }
   }
}
