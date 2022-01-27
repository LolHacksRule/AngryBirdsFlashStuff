package §>[§
{
   import §#;§.§42§;
   import §=!E§.Sprite;
   import §]!C§.§0!d§;
   
   public class §'#§ extends §%!U§
   {
       
      
      private var §]!Z§:String;
      
      private var §8!C§:Boolean;
      
      private var §-r§:Number;
      
      private var §%!K§:int;
      
      public function §'#§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§]!Z§ = param3;
         this.§8!C§ = param4;
         this.§-r§ = param5;
         this.§%!K§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!d§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §42§.§;!`§(this.§]!Z§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §%!U§
      {
         return new §'#§(time,duration,this.§]!Z§,this.§8!C§,this.§-r§,this.§%!K§);
      }
   }
}
