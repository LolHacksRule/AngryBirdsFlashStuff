package §'!O§
{
   public class §@P§
   {
      
      public static const §-$0§:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var §7#+§:String;
      
      protected var § "B§:int;
      
      protected var §]K§:int;
      
      protected var §2#F§:Vector.<§'"8§>;
      
      protected var §4#B§:String;
      
      protected var §2!c§:String;
      
      private var §6"]§:Number;
      
      private var § !J§:String;
      
      public function §@P§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super();
         this.mId = param1;
         this.§2#F§ = new Vector.<§'"8§>();
         this.§ "B§ = param2;
         this.§]K§ = param3;
         this.§4#B§ = param4;
         this.§7#+§ = param6;
         this.§ !J§ = param7 == null || param7.length == 0 ? this.§7#+§ : param7;
         this.§2!c§ = param8;
         this.§6"]§ = param5 == 0 ? Number(-1) : Number(param5);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §>"H§() : String
      {
         return this.§4#B§;
      }
      
      public function get §+"§() : Number
      {
         return this.§6"]§;
      }
      
      public function get §-#y§() : int
      {
         return this.§ "B§;
      }
      
      public function get colorGround() : int
      {
         return this.§]K§;
      }
      
      public function get §?$D§() : String
      {
         return this.§7#+§;
      }
      
      public function get §,$?§() : String
      {
         return this.§ !J§;
      }
      
      public function get §2!?§() : String
      {
         return this.§2!c§;
      }
      
      public function get §`!<§() : int
      {
         return this.§2#F§.length;
      }
      
      public function §2#,§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§'"8§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,null,0,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,Number(_loc2_.@velX) || Number(0),_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@moveStartOffsetX,_loc2_.@moveEndOffsetX,_loc2_.@highQuality.toString().toLowerCase() == "true",_loc2_.@visible || true);
            _loc3_.§6"X§(_loc2_.Particle_Emitter);
            _loc3_.§5"?§(_loc2_.animation);
         }
         this.§2#F§.reverse();
      }
      
      public function addLayer(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true) : §'"8§
      {
         var _loc17_:§'"8§ = new §'"8§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         this.§2#F§.push(_loc17_);
         return _loc17_;
      }
      
      public function §6!5§(param1:int) : §'"8§
      {
         return this.§2#F§[param1];
      }
   }
}
