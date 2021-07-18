package §`!r§
{
   import §!!U§.DisplayObject;
   import §2"Y§.§1#K§;
   import §^#>§.§#_§;
   
   public class §!!$§ extends §4!L§
   {
       
      
      private var §&![§:DisplayObject;
      
      public function §!!$§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§1#K§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§&![§ = param1;
         this.update(0);
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
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§&![§.scaleX = §8"2§;
         this.§&![§.scaleY = §8"2§;
         this.§&![§.rotation = §[<§;
         this.§&![§.x = §8!+§ / §#_§.§8]§;
         this.§&![§.y = §=!Z§ / §#_§.§8]§;
         return _loc2_;
      }
   }
}
