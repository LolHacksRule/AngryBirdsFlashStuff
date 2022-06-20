package §6!6§
{
   public class §6!r§
   {
      
      public static const §9#&§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §&#`§:String;
      
      protected var §'!B§:int;
      
      protected var §!!E§:int;
      
      protected var § #r§:Vector.<§%#1§>;
      
      protected var §2#w§:String;
      
      protected var §3#<§:String;
      
      private var §%#3§:Number;
      
      private var §`!4§:String;
      
      public function §6!r§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§ #r§ = new Vector.<§%#1§>();
         this.§'!B§ = param2;
         this.§!!E§ = param3;
         this.§2#w§ = param4;
         this.§&#`§ = param6;
         this.§`!4§ = param7 == null || param7.length == 0 ? this.§&#`§ : param7;
         this.§3#<§ = param8;
         this.§%#3§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §="B§() : String
      {
         return this.§2#w§;
      }
      
      public function get §-"U§() : Number
      {
         return this.§%#3§;
      }
      
      public function get §#"<§() : int
      {
         return this.§'!B§;
      }
      
      public function get colorGround() : int
      {
         return this.§!!E§;
      }
      
      public function get §##N§() : String
      {
         return this.§&#`§;
      }
      
      public function get §"C§() : String
      {
         return this.§`!4§;
      }
      
      public function get §<"T§() : String
      {
         return this.§3#<§;
      }
      
      public function get §]#0§() : int
      {
         return this.§ #r§.length;
      }
      
      public function §-"N§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§%#1§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§>!Q§(_loc2_.Particle_Emitter);
            _loc3_.§##G§(_loc2_.animation);
         }
         this.§ #r§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Number, param12:Number, param13:Boolean = false) : §%#1§
      {
         var _loc14_:§%#1§ = new §%#1§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         this.§ #r§.push(_loc14_);
         return _loc14_;
      }
      
      public function §7K§(param1:int) : §%#1§
      {
         return this.§ #r§[param1];
      }
   }
}
