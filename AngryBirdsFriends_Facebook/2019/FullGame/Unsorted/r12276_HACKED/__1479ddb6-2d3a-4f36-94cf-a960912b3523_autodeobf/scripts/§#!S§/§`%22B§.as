package §#!S§
{
   public class §`"B§
   {
      
      public static const §8#f§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §8$8§:String;
      
      protected var §0"R§:int;
      
      protected var §1S§:int;
      
      protected var §,"`§:Vector.<§?##§>;
      
      protected var §?"o§:String;
      
      protected var § L§:String;
      
      private var §6!g§:Number;
      
      private var §2#D§:String;
      
      public function §`"B§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§,"`§ = new Vector.<§?##§>();
         this.§0"R§ = param2;
         this.§1S§ = param3;
         this.§?"o§ = param4;
         this.§8$8§ = param6;
         this.§2#D§ = param7 == null || param7.length == 0 ? this.§8$8§ : param7;
         this.§ L§ = param8;
         this.§6!g§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §-!Y§() : String
      {
         return this.§?"o§;
      }
      
      public function get §#!L§() : Number
      {
         return this.§6!g§;
      }
      
      public function get § "l§() : int
      {
         return this.§0"R§;
      }
      
      public function get colorGround() : int
      {
         return this.§1S§;
      }
      
      public function get §8§() : String
      {
         return this.§8$8§;
      }
      
      public function get §%#_§() : String
      {
         return this.§2#D§;
      }
      
      public function get §@!e§() : String
      {
         return this.§ L§;
      }
      
      public function get § !k§() : int
      {
         return this.§,"`§.length;
      }
      
      public function §'u§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§?##§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,null,0,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true",_loc2_.@visible || true);
            _loc3_.§&#7§(_loc2_.Particle_Emitter);
            _loc3_.§;2§(_loc2_.animation);
         }
         this.§,"`§.reverse();
      }
      
      public function addLayer(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true) : §?##§
      {
         var _loc17_:§?##§ = new §?##§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         this.§,"`§.push(_loc17_);
         return _loc17_;
      }
      
      public function §^#Z§(param1:int) : §?##§
      {
         return this.§,"`§[param1];
      }
   }
}
