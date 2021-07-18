package §1"H§
{
   import §"!&§.§"v§;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.DisplayObjectContainer;
   
   public class §'![§ extends §>g§
   {
       
      
      protected var §2"!§:§"v§;
      
      protected var §]!k§:§#r§;
      
      private var §@!]§:DisplayObject;
      
      public function §'![§(param1:§#r§, param2:Number, param3:Number, param4:Number, param5:§"v§)
      {
         super(param2,param3,param4,param5);
         this.§2"!§ = param5;
         this.§]!k§ = param1;
         this.§@!]§ = this.§]!k§.getFrameWithOffset(§=!c§,this.§@!]§);
      }
      
      public function get §,"F§() : DisplayObject
      {
         return this.§@!]§;
      }
      
      public function dispose() : void
      {
         if(this.§@!]§)
         {
            this.§@!]§.dispose();
            this.§@!]§ = null;
         }
         this.§2"!§ = null;
         this.§]!k§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§]!k§.getFrameWithOffset(§=!c§,this.§@!]§);
         if(_loc3_ != this.§@!]§)
         {
            (_loc4_ = this.§@!]§.parent).removeChild(this.§@!]§);
            _loc4_.addChild(_loc3_);
            this.§@!]§ = _loc3_;
         }
         this.§@!]§.scaleX = §=T§;
         this.§@!]§.scaleY = §=T§;
         this.§@!]§.rotation = §"X§;
         this.§@!]§.x = §""4§ / §^g§.§5!-§;
         this.§@!]§.y = §%W§ / §^g§.§5!-§;
         return _loc2_;
      }
   }
}
