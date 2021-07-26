package §6$8§
{
   public class §]§
   {
      
      public static const §-k§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §]#,§:String;
      
      protected var §^$6§:int;
      
      protected var §?"X§:int;
      
      protected var §%"J§:Vector.<§]!7§>;
      
      protected var §7#[§:String;
      
      protected var §5"x§:String;
      
      private var §0#x§:Number;
      
      private var §;#a§:String;
      
      public function §]§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§%"J§ = new Vector.<§]!7§>();
         this.§^$6§ = param2;
         this.§?"X§ = param3;
         this.§7#[§ = param4;
         this.§]#,§ = param6;
         this.§;#a§ = param7 == null || param7.length == 0 ? this.§]#,§ : param7;
         this.§5"x§ = param8;
         this.§0#x§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §>#5§() : String
      {
         return this.§7#[§;
      }
      
      public function get §2z§() : Number
      {
         return this.§0#x§;
      }
      
      public function get §!$@§() : int
      {
         return this.§^$6§;
      }
      
      public function get colorGround() : int
      {
         return this.§?"X§;
      }
      
      public function get §!#!§() : String
      {
         return this.§]#,§;
      }
      
      public function get §7$;§() : String
      {
         return this.§;#a§;
      }
      
      public function get §,"a§() : String
      {
         return this.§5"x§;
      }
      
      public function get §-#t§() : int
      {
         return this.§%"J§.length;
      }
      
      public function §<#X§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§]!7§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§##D§(_loc2_.Particle_Emitter);
            _loc3_.§!"D§(_loc2_.animation);
         }
         this.§%"J§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Number, param12:Number, param13:Boolean = false) : §]!7§
      {
         var _loc14_:§]!7§ = new §]!7§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         this.§%"J§.push(_loc14_);
         return _loc14_;
      }
      
      public function §<$0§(param1:int) : §]!7§
      {
         return this.§%"J§[param1];
      }
   }
}
