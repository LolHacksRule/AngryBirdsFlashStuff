package §2G§
{
   public class §9!m§ extends §1#S§
   {
       
      
      public var §=B§:int;
      
      public var §&#Y§:String;
      
      public var §-$%§:String;
      
      public var nickName:String;
      
      public var §#$9§:String;
      
      public var §#"x§:int;
      
      public var profilePicture:String;
      
      public var coins:int;
      
      public var isMe:Boolean;
      
      public var §;=§:Boolean;
      
      public var §1!5§:int;
      
      public function §9!m§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:String, param9:int, param10:Boolean, param11:int, param12:String, param13:String, param14:int)
      {
         this.§=B§ = param2;
         this.§&#Y§ = param3;
         this.§-$%§ = param4;
         this.nickName = param5;
         this.§#$9§ = param6;
         this.§#"x§ = param7;
         this.profilePicture = param8;
         this.coins = param9;
         this.isMe = param10;
         this.§;=§ = param12 && param12 == "t";
         this.§1!5§ = param14;
         var _loc15_:String = !!(_loc15_ = !!param5 ? param5 : param3) ? _loc15_ : "";
         super(param1,_loc15_,param8,param11,param13);
      }
      
      public static function §+!@§(param1:Object) : §9!m§
      {
         return new §9!m§(param1.u,param1.ts,param1.n,param1.l,param1.ni,param1.p,param1.s,param1.ir,param1.c,param1.me,param1.r,param1.fs,param1.iurl,param1.lrc);
      }
   }
}
