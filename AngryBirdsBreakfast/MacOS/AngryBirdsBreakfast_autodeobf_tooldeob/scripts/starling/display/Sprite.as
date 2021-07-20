package starling.display
{
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.core.QuadBatch;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var mFlattenedContents:Vector.<QuadBatch>;
      
      private var mUseHandCursor:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.unflatten();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.mUseHandCursor;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.mUseHandCursor)
         {
            return;
         }
         this.mUseHandCursor = param1;
         if(this.mUseHandCursor)
         {
            addEventListener(TouchEvent.TOUCH,this.onTouch);
         }
         else
         {
            removeEventListener(TouchEvent.TOUCH,this.onTouch);
         }
      }
      
      private function onTouch(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.interactsWith(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(Starling.current && Starling.current.quadBatchingEnabled)
         {
            dispatchEventOnChildren(new Event(Event.FLATTEN));
            if(this.mFlattenedContents == null)
            {
               this.mFlattenedContents = new Vector.<QuadBatch>(0);
               Starling.current.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
            }
            QuadBatch.compile(this,this.mFlattenedContents);
         }
      }
      
      public function unflatten() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(Starling.current && Starling.current.quadBatchingEnabled)
         {
            if(this.mFlattenedContents)
            {
               Starling.current.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
               _loc1_ = this.mFlattenedContents.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.mFlattenedContents[_loc2_].dispose();
                  _loc2_++;
               }
               this.mFlattenedContents = null;
            }
         }
      }
      
      private function onContextCreated(param1:Event) : void
      {
         if(this.mFlattenedContents)
         {
            this.mFlattenedContents = new Vector.<QuadBatch>(0);
            this.flatten();
         }
      }
      
      public function get isFlattened() : Boolean
      {
         return this.mFlattenedContents != null;
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.mFlattenedContents && color == 16777215)
         {
            param1.finishQuadBatch();
            param2 *= this.alpha;
            _loc3_ = this.mFlattenedContents.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.mFlattenedContents[_loc4_].render(param1.context,param1.mvpMatrix,param2);
               _loc4_++;
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}
