package §_-2J§
{
   import flash.display.BitmapData;
   
   public class §_-Tz§
   {
       
      
      private var §_-ba§:Vector.<§_-4w§>;
      
      protected var §_-wM§:BitmapData;
      
      protected var mName:String;
      
      public function §_-Tz§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            if(!(_loc3_ && param1))
            {
               §§goto(addr36);
            }
            §§goto(addr53);
         }
         addr36:
         this.§_-wM§ = param1;
         if(_loc2_ || param1)
         {
            addr53:
            this.§_-ba§ = new Vector.<§_-4w§>();
         }
      }
      
      public function get §_-PF§() : int
      {
         return this.§_-ba§.length;
      }
      
      public function get §_-u8§() : int
      {
         return this.§_-wM§.width;
      }
      
      public function get §_-AI§() : int
      {
         return this.§_-wM§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-wM§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-wM§)
            {
               if(_loc1_)
               {
                  this.§_-wM§.dispose();
                  if(_loc1_ || this)
                  {
                     §§goto(addr37);
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr54);
         }
         addr37:
         this.§_-wM§ = null;
         if(!(_loc2_ && _loc2_))
         {
            addr54:
            this.§_-ba§ = new Vector.<§_-4w§>();
         }
      }
      
      public function §_-Rt§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-wM§ = param1;
         }
      }
      
      public function §_-zc§(param1:§_-4w§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-ba§.push(param1);
         }
      }
      
      public function §_-j-§(param1:String) : §_-4w§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§_-ba§.length)
            {
               if(this.§_-ba§[_loc2_].mName == param1)
               {
                  if(_loc3_ || this)
                  {
                     return this.§_-ba§[_loc2_];
                  }
               }
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && this))
                     {
                        continue loop0;
                     }
                     continue;
                  }
               }
               continue loop0;
            }
            addr90:
            return null;
         }
      }
      
      public function §_-e-§(param1:int) : §_-4w§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() < 0);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr56);
                        }
                        return null;
                     }
                  }
               }
               §§goto(addr56);
            }
            addr56:
            if(param1 >= this.§_-ba§.length)
            {
               if(!(_loc2_ || param1))
               {
                  §§goto(addr73);
               }
            }
            §§goto(addr73);
         }
         addr73:
         return this.§_-ba§[param1];
      }
   }
}
