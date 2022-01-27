package §,§
{
   public class §-!d§
   {
      
      public static const §`"=§:String = "GROUND_HILLS";
       
      
      protected var §1!q§:String;
      
      protected var §+2§:String;
      
      protected var §!R§:int;
      
      protected var §0!M§:int;
      
      protected var §>Z§:Vector.<§!P§>;
      
      protected var §^!_§:String;
      
      protected var §6",§:String;
      
      public function §-!d§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§1!q§ = param1;
         this.§>Z§ = new Vector.<§!P§>();
         this.§!R§ = param2;
         this.§0!M§ = param3;
         this.§^!_§ = param4;
         this.§+2§ = param5;
         this.§6",§ = param6;
      }
      
      public function get id() : String
      {
         return this.§1!q§;
      }
      
      public function get §2">§() : String
      {
         return this.§^!_§;
      }
      
      public function get §1=§() : int
      {
         return this.§!R§;
      }
      
      public function get colorGround() : int
      {
         return this.§0!M§;
      }
      
      public function get §2Z§() : String
      {
         return this.§+2§;
      }
      
      public function get §]!o§() : int
      {
         return this.§>Z§.length;
      }
      
      public function §,!W§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§!P§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§^'§(_loc2_.§["6§);
         }
         this.§>Z§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §!P§
      {
         var _loc11_:§!P§ = new §!P§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§>Z§.push(_loc11_);
         return _loc11_;
      }
      
      public function §'!W§(param1:int) : §!P§
      {
         return this.§>Z§[param1];
      }
   }
}
