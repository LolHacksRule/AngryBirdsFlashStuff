package starling.core
{
   import flash.system.System;
   import starling.display.BlendMode;
   import starling.display.Quad;
   import starling.display.Sprite;
   import starling.events.EnterFrameEvent;
   import starling.events.Event;
   import starling.text.BitmapFont;
   import starling.text.TextField;
   import starling.utils.HAlign;
   import starling.utils.VAlign;
   
   class StatsDisplay extends Sprite
   {
       
      
      private var mBackground:Quad;
      
      private var mTextField:TextField;
      
      private var mFrameCount:int = 0;
      
      private var mDrawCount:int = 0;
      
      private var mTotalTime:Number = 0;
      
      function StatsDisplay()
      {
         super();
         this.mBackground = new Quad(50,25,0);
         this.mTextField = new TextField(48,25,"",BitmapFont.MINI,BitmapFont.NATIVE_SIZE,16777215);
         this.mTextField.x = 2;
         this.mTextField.hAlign = HAlign.LEFT;
         this.mTextField.vAlign = VAlign.TOP;
         addChild(this.mBackground);
         addChild(this.mTextField);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.updateText(0,this.getMemory(),0);
         blendMode = BlendMode.NONE;
      }
      
      private function updateText(fps:Number, memory:Number, drawCount:int) : void
      {
         this.mTextField.text = "FPS: " + fps.toFixed(fps < 100 ? 1 : 0) + "\nMEM: " + memory.toFixed(memory < 100 ? 1 : 0) + "\nDRW: " + drawCount;
      }
      
      private function getMemory() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(event:EnterFrameEvent) : void
      {
         this.mTotalTime += event.passedTime;
         ++this.mFrameCount;
         if(this.mTotalTime > 1)
         {
            this.updateText(this.mFrameCount / this.mTotalTime,this.getMemory(),this.mDrawCount - 2);
            this.mFrameCount = this.mTotalTime = 0;
         }
      }
      
      public function get drawCount() : int
      {
         return this.mDrawCount;
      }
      
      public function set drawCount(value:int) : void
      {
         this.mDrawCount = value;
      }
   }
}
