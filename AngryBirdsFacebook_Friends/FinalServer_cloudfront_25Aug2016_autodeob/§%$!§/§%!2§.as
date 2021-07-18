package §%$!§
{
   public class §%!2§ extends §"#q§
   {
       
      
      public var §?#7§:int;
      
      public var §="N§:String;
      
      public var §,$,§:String;
      
      public var nickName:String;
      
      public var §9m§:String;
      
      public var §^#N§:int;
      
      public var profilePicture:String;
      
      public var coins:int;
      
      public var isMe:Boolean;
      
      public var §%!+§:Boolean;
      
      public function §%!2§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:String, param9:int, param10:Boolean, param11:int, param12:String, param13:String)
      {
         this.§?#7§ = param2;
         this.§="N§ = param3;
         this.§,$,§ = param4;
         this.nickName = param5;
         this.§9m§ = param6;
         this.§^#N§ = param7;
         this.profilePicture = param8;
         this.coins = param9;
         this.isMe = param10;
         this.§%!+§ = param12 && param12 == "t";
         var _loc14_:String = !!(_loc14_ = !!param5 ? param5 : param3) ? _loc14_ : "";
         super(param1,_loc14_,param8,param11,param13);
      }
      
      public static function §>!§(param1:Object) : §%!2§
      {
         return new §%!2§(param1.u,param1.ts,param1.n,param1.l,param1.ni,param1.p,param1.s,param1.ir,param1.c,param1.me,param1.r,param1.fs,param1.iurl);
      }
   }
}
