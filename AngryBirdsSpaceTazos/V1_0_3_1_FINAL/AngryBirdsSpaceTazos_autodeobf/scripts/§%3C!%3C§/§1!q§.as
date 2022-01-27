package §<!<§
{
   public class §1!q§
   {
      
      public static const §;$§:String = "GROUND_HILLS";
       
      
      protected var §?I§:String;
      
      protected var §!m§:String;
      
      protected var §=@§:int;
      
      protected var §1;§:int;
      
      protected var §,!y§:Vector.<§67§>;
      
      protected var §8v§:String;
      
      protected var §#+§:String;
      
      public function §1!q§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§?I§ = param1;
         this.§,!y§ = new Vector.<§67§>();
         this.§=@§ = param2;
         this.§1;§ = param3;
         this.§8v§ = param4;
         this.§!m§ = param5;
         this.§#+§ = param6;
      }
      
      public function get id() : String
      {
         return this.§?I§;
      }
      
      public function get §?!z§() : String
      {
         return this.§8v§;
      }
      
      public function get §!B§() : int
      {
         return this.§=@§;
      }
      
      public function get colorGround() : int
      {
         return this.§1;§;
      }
      
      public function get §@K§() : String
      {
         return this.§!m§;
      }
      
      public function get § else§() : int
      {
         return this.§,!y§.length;
      }
      
      public function §3!7§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§67§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§3!;§(_loc2_.§ !y§);
         }
         this.§,!y§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §67§
      {
         var _loc11_:§67§ = new §67§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§,!y§.push(_loc11_);
         return _loc11_;
      }
      
      public function §"!I§(param1:int) : §67§
      {
         return this.§,!y§[param1];
      }
   }
}
