package §3j§
{
   import §+!J§.§""A§;
   import §,!k§.Assistant;
   import §1"b§.§7",§;
   import §7g§.§,!B§;
   import §87§.§?§;
   import §]"T§.§'"N§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import flash.geom.Rectangle;
   
   public class §7e§ extends §9#'§
   {
       
      
      public var assistant:Assistant;
      
      public var §9!O§:§,!B§;
      
      public var input:§'"N§;
      
      public var output:§?#8§;
      
      private var §#L§:DConsole;
      
      private var § 7§:Rectangle;
      
      private var §7#O§:Rectangle;
      
      public function §7e§(param1:DConsole)
      {
         super();
         this.§#L§ = param1;
         this.§9!O§ = new §,!B§(param1);
         this.output = new §?#8§(param1);
         this.input = new §'"N§(param1);
         this.assistant = new Assistant(param1);
         addChild(this.§9!O§);
         addChild(this.output);
         addChild(this.assistant);
         addChild(this.input);
         this.§#L§.§]"z§.addCallback(§""A§.§9#C§,this.§?!#§,§""A§.§8"$§);
      }
      
      private function §?!#§(param1:§7",§) : void
      {
         this.§ 7§ = this.§7#O§.clone();
         this.update();
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         this.§7#O§ = param1.clone();
         this.§ 7§ = this.§7#O§.clone();
         this.update();
      }
      
      public function update() : void
      {
         var _loc3_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         if(!this.§ 7§)
         {
            return;
         }
         var _loc1_:Number = this.§ 7§.height;
         var _loc2_:Number = this.§ 7§.width;
         _loc3_ = 0;
         var _loc5_:Number = this.§ 7§.x;
         _loc6_ = this.§ 7§.y;
         x = _loc5_;
         y = _loc6_;
         this.§9!O§.visible = this.output.visible = this.assistant.visible = false;
         this.§ 7§.x = this.§ 7§.y = 0;
         this.assistant.visible = _loc1_ > 2 * §>"!§.§6R§;
         if(_loc1_ > 3 * §>"!§.§6R§ && this.§#L§.§="b§.§9!Y§ > 1)
         {
            this.§9!O§.visible = true;
            this.§9!O§.onParentUpdate(this.§ 7§);
            _loc3_ += §>"!§.§6R§;
         }
         if(_loc1_ > 1 * §>"!§.§6R§)
         {
            this.output.visible = true;
            this.§ 7§.y = _loc3_;
            _loc7_ = 3;
            if(!this.§9!O§.visible)
            {
               _loc7_--;
            }
            if(!this.assistant.visible)
            {
               _loc7_--;
            }
            this.§ 7§.height = _loc1_ - _loc7_ * §>"!§.§6R§;
            this.output.onParentUpdate(this.§ 7§);
            _loc3_ += this.output.height;
         }
         if(!this.assistant.visible)
         {
            _loc3_ = _loc1_ - §>"!§.§6R§;
         }
         this.§ 7§.y = _loc3_;
         this.input.onParentUpdate(this.§ 7§);
         _loc3_ += this.input.height;
         if(this.assistant.visible)
         {
            this.§ 7§.y = _loc3_;
            this.assistant.onParentUpdate(this.§ 7§);
         }
      }
   }
}
