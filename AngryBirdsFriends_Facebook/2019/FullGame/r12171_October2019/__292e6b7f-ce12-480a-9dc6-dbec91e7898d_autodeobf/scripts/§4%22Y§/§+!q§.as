package §4"Y§
{
   public class §+!q§
   {
      
      public static const §6!q§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §&"@§:String;
      
      protected var §,"A§:int;
      
      protected var §if§:int;
      
      protected var §%g§:Vector.<§@!H§>;
      
      protected var §;5§:String;
      
      protected var §%#U§:String;
      
      private var §;I§:Number;
      
      private var §,#y§:String;
      
      public function §+!q§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§%g§ = new Vector.<§@!H§>();
         this.§,"A§ = param2;
         this.§if§ = param3;
         this.§;5§ = param4;
         this.§&"@§ = param6;
         this.§,#y§ = param7 == null || param7.length == 0 ? this.§&"@§ : param7;
         this.§%#U§ = param8;
         this.§;I§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §<"!§() : String
      {
         return this.§;5§;
      }
      
      public function get §1#B§() : Number
      {
         return this.§;I§;
      }
      
      public function get §%!"§() : int
      {
         return this.§,"A§;
      }
      
      public function get colorGround() : int
      {
         return this.§if§;
      }
      
      public function get §6!3§() : String
      {
         return this.§&"@§;
      }
      
      public function get §[j§() : String
      {
         return this.§,#y§;
      }
      
      public function get §6#d§() : String
      {
         return this.§%#U§;
      }
      
      public function get §`"§() : int
      {
         return this.§%g§.length;
      }
      
      public function §`$$§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§@!H§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,null,0,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true",_loc2_.@visible || true);
            _loc3_.§<"T§(_loc2_.Particle_Emitter);
            _loc3_.§"#>§(_loc2_.animation);
         }
         this.§%g§.reverse();
      }
      
      public function addLayer(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true) : §@!H§
      {
         var _loc17_:§@!H§ = new §@!H§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         this.§%g§.push(_loc17_);
         return _loc17_;
      }
      
      public function §=!T§(param1:int) : §@!H§
      {
         return this.§%g§[param1];
      }
   }
}
