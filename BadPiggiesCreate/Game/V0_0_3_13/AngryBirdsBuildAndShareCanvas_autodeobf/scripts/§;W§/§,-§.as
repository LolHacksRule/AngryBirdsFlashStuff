package §;W§
{
   import flash.display.DisplayObject;
   import flash.display.Shape;
   
   public class §,-§ extends §!%§
   {
       
      
      private var §&9§:Number = 0.05;
      
      public function §,-§()
      {
         super();
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(0,0);
         _loc1_.graphics.drawRect(0,0,40,40);
         _loc1_.graphics.endFill();
         addChild(_loc1_);
      }
      
      override public function onEnterGUI() : void
      {
         alpha = 0.3;
         mouseEnabled = false;
      }
      
      override public function onLeaveGUI() : void
      {
         alpha = 1;
         mouseEnabled = true;
      }
      
      override public function setIcon(param1:DisplayObject) : void
      {
         super.setIcon(param1);
         x = parent.mouseX - width / 2;
         y = parent.mouseY - height / 2;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(!parent)
         {
            return;
         }
         if(param1 == -1)
         {
            x = parent.mouseX - width / 2;
            y = parent.mouseY - height / 2;
         }
         else
         {
            _loc2_ = Math.min(this.§&9§ * param1,1);
            x -= (x - (parent.mouseX - width / 2)) * _loc2_;
            y -= (y - (parent.mouseY - height / 2)) * _loc2_;
         }
      }
   }
}
