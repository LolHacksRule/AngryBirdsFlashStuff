package §^§#0
{
   public class §[>§
   {
      
      public static const §1"r§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §1">§:String;
      
      protected var §4!z§:int;
      
      protected var §;k§:int;
      
      protected var §="J§:Vector.<§?V§>;
      
      protected var §@"v§:String;
      
      protected var §9#n§:String;
      
      private var §>!B§:Number;
      
      private var §0!N§:String;
      
      public function §[>§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§="J§ = new Vector.<§?V§>();
         this.§4!z§ = param2;
         this.§;k§ = param3;
         this.§@"v§ = param4;
         this.§1">§ = param6;
         this.§0!N§ = param7 == null || param7.length == 0 ? this.§1">§ : param7;
         this.§9#n§ = param8;
         this.§>!B§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §-$4§() : String
      {
         return this.§@"v§;
      }
      
      public function get §]#h§() : Number
      {
         return this.§>!B§;
      }
      
      public function get §9#B§() : int
      {
         return this.§4!z§;
      }
      
      public function get colorGround() : int
      {
         return this.§;k§;
      }
      
      public function get §&!q§() : String
      {
         return this.§1">§;
      }
      
      public function get §=!Y§() : String
      {
         return this.§0!N§;
      }
      
      public function get §3#t§() : String
      {
         return this.§9#n§;
      }
      
      public function get §^!P§() : int
      {
         return this.§="J§.length;
      }
      
      public function §'"I§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§?V§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§4"U§(_loc2_.Particle_Emitter);
            _loc3_.§!"B§(_loc2_.animation);
         }
         this.§="J§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Number, param12:Number, param13:Boolean = false) : §?V§
      {
         var _loc14_:§?V§ = new §?V§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         this.§="J§.push(_loc14_);
         return _loc14_;
      }
      
      public function §"#$§(param1:int) : §?V§
      {
         return this.§="J§[param1];
      }
   }
}
