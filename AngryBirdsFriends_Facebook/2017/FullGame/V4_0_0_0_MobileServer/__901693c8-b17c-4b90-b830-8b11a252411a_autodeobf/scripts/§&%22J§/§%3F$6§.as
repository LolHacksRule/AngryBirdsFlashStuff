package §&"J§
{
   public class §?$6§ extends §2!T§
   {
       
      
      public var §1#e§:int;
      
      public var §<#S§:String;
      
      public var §5!2§:String;
      
      public var nickName:String;
      
      public var §#N§:String;
      
      public var §%S§:int;
      
      public var profilePicture:String;
      
      public var coins:int;
      
      public var isMe:Boolean;
      
      public var §,!;§:Boolean;
      
      public var §>r§:int;
      
      public function §?$6§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:String, param9:int, param10:Boolean, param11:int, param12:String, param13:String, param14:int)
      {
         this.§1#e§ = param2;
         this.§<#S§ = param3;
         this.§5!2§ = param4;
         this.nickName = param5;
         this.§#N§ = param6;
         this.§%S§ = param7;
         this.profilePicture = param8;
         this.coins = param9;
         this.isMe = param10;
         this.§,!;§ = param12 && param12 == "t";
         this.§>r§ = param14;
         var _loc15_:String = !!(_loc15_ = !!param5 ? param5 : param3) ? _loc15_ : "";
         super(param1,_loc15_,param8,param11,param13);
      }
      
      public static function §2u§(param1:Object) : §?$6§
      {
         return new §?$6§(param1.u,param1.ts,param1.n,param1.l,param1.ni,param1.p,param1.s,param1.ir,param1.c,param1.me,param1.r,param1.fs,param1.iurl,param1.lrc);
      }
   }
}
