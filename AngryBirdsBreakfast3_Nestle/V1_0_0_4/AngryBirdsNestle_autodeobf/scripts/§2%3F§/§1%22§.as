package §2?§
{
   public class §1"§
   {
      
      public static const §%D§:String = "GROUND_HILLS";
       
      
      protected var §[![§:String;
      
      protected var §#"0§:String;
      
      protected var §>!$§:int;
      
      protected var §+a§:int;
      
      protected var §@![§:Vector.<§!!m§>;
      
      protected var §!K§:String;
      
      protected var §"r§:String;
      
      public function §1"§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§[![§ = param1;
         this.§@![§ = new Vector.<§!!m§>();
         this.§>!$§ = param2;
         this.§+a§ = param3;
         this.§!K§ = param4;
         this.§#"0§ = param5;
         this.§"r§ = param6;
      }
      
      public function get id() : String
      {
         return this.§[![§;
      }
      
      public function get §!x§() : String
      {
         return this.§!K§;
      }
      
      public function get §1-§() : int
      {
         return this.§>!$§;
      }
      
      public function get §5B§() : int
      {
         return this.§+a§;
      }
      
      public function get §<!;§() : String
      {
         return this.§#"0§;
      }
      
      public function get §;I§() : int
      {
         return this.§@![§.length;
      }
      
      public function §7!M§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§!!m§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§2!p§(_loc2_.§in §);
         }
         this.§@![§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §!!m§
      {
         var _loc11_:§!!m§ = new §!!m§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§@![§.push(_loc11_);
         return _loc11_;
      }
      
      public function §!!t§(param1:int) : §!!m§
      {
         return this.§@![§[param1];
      }
   }
}
