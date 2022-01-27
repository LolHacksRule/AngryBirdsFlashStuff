package §1"?§
{
   import §&!]§.DisplayObject;
   import §&!]§.DisplayObjectContainer;
   import §3"#§.§`"8§;
   import §3>§.§@!1§;
   import §9!v§.§1!_§;
   
   public class §`!]§ extends §"!_§
   {
       
      
      protected var §>!+§:§@!1§;
      
      protected var §?^§:§1!_§;
      
      private var §,l§:DisplayObject;
      
      public function §`!]§(param1:§1!_§, param2:Number, param3:Number, param4:Number, param5:§@!1§)
      {
         super(param2,param3,param4,param5);
         this.§>!+§ = param5;
         this.§?^§ = param1;
         this.§,l§ = this.§?^§.getFrameWithOffset(§`!L§,this.§,l§);
      }
      
      public function get §'!+§() : DisplayObject
      {
         return this.§,l§;
      }
      
      public function dispose() : void
      {
         if(this.§,l§)
         {
            this.§,l§.dispose();
            this.§,l§ = null;
         }
         this.§>!+§ = null;
         this.§?^§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§?^§.getFrameWithOffset(§`!L§,this.§,l§);
         if(_loc3_ != this.§,l§)
         {
            (_loc4_ = this.§,l§.parent).removeChild(this.§,l§);
            _loc4_.addChild(_loc3_);
            this.§,l§ = _loc3_;
         }
         this.§,l§.scaleX = §&!A§;
         this.§,l§.scaleY = §&!A§;
         this.§,l§.rotation = §#!$§;
         this.§,l§.x = §''§ / §`"8§.§3!=§;
         this.§,l§.y = §3"<§ / §`"8§.§3!=§;
         return _loc2_;
      }
   }
}
