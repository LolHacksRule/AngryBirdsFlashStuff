package §-<§
{
   public class §'"v§
   {
      
      public static const §"!B§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §2#3§:String;
      
      protected var §`"P§:int;
      
      protected var §"W§:int;
      
      protected var §<!u§:Vector.<§8"h§>;
      
      protected var § in§:String;
      
      protected var §14§:String;
      
      private var §>!N§:Number;
      
      private var §1"D§:String;
      
      public function §'"v§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§<!u§ = new Vector.<§8"h§>();
         this.§`"P§ = param2;
         this.§"W§ = param3;
         this.§ in§ = param4;
         this.§2#3§ = param6;
         this.§1"D§ = param7 == null || param7.length == 0 ? this.§2#3§ : param7;
         this.§14§ = param8;
         this.§>!N§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §7!=§() : String
      {
         return this.§ in§;
      }
      
      public function get §0#X§() : Number
      {
         return this.§>!N§;
      }
      
      public function get §@#;§() : int
      {
         return this.§`"P§;
      }
      
      public function get colorGround() : int
      {
         return this.§"W§;
      }
      
      public function get §@n§() : String
      {
         return this.§2#3§;
      }
      
      public function get §!!8§() : String
      {
         return this.§1"D§;
      }
      
      public function get §#!y§() : String
      {
         return this.§14§;
      }
      
      public function get §7>§() : int
      {
         return this.§<!u§.length;
      }
      
      public function §>#B§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§8"h§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,null,0,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true",_loc2_.@visible || true);
            _loc3_.§%#t§(_loc2_.Particle_Emitter);
            _loc3_.§%"h§(_loc2_.animation);
         }
         this.§<!u§.reverse();
      }
      
      public function addLayer(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true) : §8"h§
      {
         var _loc17_:§8"h§ = new §8"h§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         this.§<!u§.push(_loc17_);
         return _loc17_;
      }
      
      public function §-$0§(param1:int) : §8"h§
      {
         return this.§<!u§[param1];
      }
   }
}
