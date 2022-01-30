package §>!z§
{
   public class §^y§
   {
      
      public static const §<!u§:String = "GROUND_HILLS";
       
      
      protected var §=H§:String;
      
      protected var §+!x§:String;
      
      protected var §3" §:int;
      
      protected var § !$§:int;
      
      protected var §>"5§:Vector.<§'v§>;
      
      protected var § !%§:String;
      
      protected var §1"0§:String;
      
      public function §^y§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§=H§ = param1;
         this.§>"5§ = new Vector.<§'v§>();
         this.§3" § = param2;
         this.§ !$§ = param3;
         this.§ !%§ = param4;
         this.§+!x§ = param5;
         this.§1"0§ = param6;
      }
      
      public function get id() : String
      {
         return this.§=H§;
      }
      
      public function get §!!d§() : String
      {
         return this.§ !%§;
      }
      
      public function get §3v§() : int
      {
         return this.§3" §;
      }
      
      public function get §'!;§() : int
      {
         return this.§ !$§;
      }
      
      public function get §-"%§() : String
      {
         return this.§+!x§;
      }
      
      public function get §'Q§() : int
      {
         return this.§>"5§.length;
      }
      
      public function §"!&§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§'v§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§ w§(_loc2_.§=!g§);
         }
         this.§>"5§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §'v§
      {
         var _loc11_:§'v§ = new §'v§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§>"5§.push(_loc11_);
         return _loc11_;
      }
      
      public function §@!y§(param1:int) : §'v§
      {
         return this.§>"5§[param1];
      }
   }
}
