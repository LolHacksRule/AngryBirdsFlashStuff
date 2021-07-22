package §-<§
{
   public class §,",§ extends §8"h§
   {
       
      
      protected var §8#F§:Vector.<§2#r§>;
      
      protected var §`#?§:Number = 1.0;
      
      protected var §"#_§:Number = 1.0;
      
      protected var §-#,§:Number = 1.0;
      
      protected var §&"s§:Number = 1.0;
      
      protected var §4"u§:Number = 0.0;
      
      public function §,",§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number, param15:Boolean, param16:Boolean, param17:Boolean, param18:Number, param19:Number, param20:Boolean = false, param21:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param13,param15,param16,param17,param18,param19,param20,param21);
         this.§8#F§ = new Vector.<§2#r§>();
         this.§`#?§ = param9;
         this.§"#_§ = param10;
         this.§-#,§ = param11;
         this.§&"s§ = param12;
         this.§4"u§ = param14;
      }
      
      public function get §-`§() : Number
      {
         return this.§`#?§;
      }
      
      public function get §^p§() : Number
      {
         return this.§"#_§;
      }
      
      public function get §`!I§() : Number
      {
         return this.§-#,§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§&"s§;
      }
      
      public function get velocityY() : Number
      {
         return this.§4"u§;
      }
      
      public function § #'§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§2#r§;
         (_loc11_ = new §2#r§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§8#F§.push(_loc11_);
      }
   }
}
