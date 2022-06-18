package §>#Y§
{
   public class §3"Q§ extends §!!d§
   {
       
      
      public var §9`§:int;
      
      public var §?"B§:String;
      
      public var §;"e§:String;
      
      public var nickName:String;
      
      public var §;#_§:String;
      
      public var §>!1§:int;
      
      public var profilePicture:String;
      
      public var coins:int;
      
      public var isMe:Boolean;
      
      public var §3#<§:Boolean;
      
      public var §!#$§:int;
      
      public function §3"Q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:String, param9:int, param10:Boolean, param11:int, param12:String, param13:String, param14:int)
      {
         this.§9`§ = param2;
         this.§?"B§ = param3;
         this.§;"e§ = param4;
         this.nickName = param5;
         this.§;#_§ = param6;
         this.§>!1§ = param7;
         this.profilePicture = param8;
         this.coins = param9;
         this.isMe = param10;
         this.§3#<§ = param12 && param12 == "t";
         this.§!#$§ = param14;
         var _loc15_:String = !!(_loc15_ = !!param5 ? param5 : param3) ? _loc15_ : "";
         super(param1,_loc15_,param8,param11,param13);
      }
      
      public static function §5!I§(param1:Object) : §3"Q§
      {
         return new §3"Q§(param1.u,param1.ts,param1.n,param1.l,param1.ni,param1.p,param1.s,param1.ir,param1.c,param1.me,param1.r,param1.fs,param1.iurl,param1.lrc);
      }
   }
}
