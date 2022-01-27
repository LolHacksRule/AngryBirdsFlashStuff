package §`!r§
{
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   import §2"Y§.§1#K§;
   import §7!F§.§>"G§;
   import §^#>§.§#_§;
   
   public class §3#a§ extends §4!L§
   {
       
      
      protected var §<X§:§1#K§;
      
      protected var §]!`§:§>"G§;
      
      private var §&![§:DisplayObject;
      
      public function §3#a§(param1:§>"G§, param2:Number, param3:Number, param4:Number, param5:§1#K§)
      {
         super(param2,param3,param4,param5);
         this.§<X§ = param5;
         this.§]!`§ = param1;
         this.§&![§ = this.§]!`§.getFrameWithOffset(§3! §,this.§&![§);
      }
      
      public function get §[!8§() : DisplayObject
      {
         return this.§&![§;
      }
      
      public function dispose() : void
      {
         if(this.§&![§)
         {
            this.§&![§.dispose();
            this.§&![§ = null;
         }
         this.§<X§ = null;
         this.§]!`§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§]!`§.getFrameWithOffset(§3! §,this.§&![§);
         if(_loc3_ != this.§&![§)
         {
            (_loc4_ = this.§&![§.parent).removeChild(this.§&![§);
            _loc4_.addChild(_loc3_);
            this.§&![§ = _loc3_;
         }
         this.§&![§.scaleX = §8"2§;
         this.§&![§.scaleY = §8"2§;
         this.§&![§.rotation = §[<§;
         this.§&![§.x = §8!+§ / §#_§.§8]§;
         this.§&![§.y = §=!Z§ / §#_§.§8]§;
         return _loc2_;
      }
   }
}
