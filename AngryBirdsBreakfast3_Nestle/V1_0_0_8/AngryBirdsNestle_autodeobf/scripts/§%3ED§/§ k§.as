package §>D§
{
   public class § k§
   {
      
      public static const §+l§:String = "GROUND_HILLS";
       
      
      protected var §3!J§:String;
      
      protected var §^l§:String;
      
      protected var §'"§:int;
      
      protected var §-b§:int;
      
      protected var §@<§:Vector.<§^§>;
      
      protected var §`v§:String;
      
      protected var §%!$§:String;
      
      public function § k§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§3!J§ = param1;
         this.§@<§ = new Vector.<§^§>();
         this.§'"§ = param2;
         this.§-b§ = param3;
         this.§`v§ = param4;
         this.§^l§ = param5;
         this.§%!$§ = param6;
      }
      
      public function get id() : String
      {
         return this.§3!J§;
      }
      
      public function get §+!=§() : String
      {
         return this.§`v§;
      }
      
      public function get §^! §() : int
      {
         return this.§'"§;
      }
      
      public function get §1!e§() : int
      {
         return this.§-b§;
      }
      
      public function get § §() : String
      {
         return this.§^l§;
      }
      
      public function get §!%§() : int
      {
         return this.§@<§.length;
      }
      
      public function §8!L§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§^§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§9r§(_loc2_.§3!L§);
         }
         this.§@<§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §^§
      {
         var _loc11_:§^§ = new §^§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§@<§.push(_loc11_);
         return _loc11_;
      }
      
      public function §[!O§(param1:int) : §^§
      {
         return this.§@<§[param1];
      }
   }
}
