package §9"U§
{
   import §%#+§.§,v§;
   import §%#+§.§<!V§;
   import §%#+§.§?!^§;
   import §%#+§.§?"+§;
   import §%#+§.§`"l§;
   import §&!j§.§5#+§;
   import §'"A§.§!§;
   import §'"A§.§#F§;
   import §'"A§.§3"x§;
   import §+d§.§0#&§;
   import §+d§.§2!g§;
   import §98§.§3!i§;
   import §?!u§.§?b§;
   import flash.events.EventDispatcher;
   
   public class §[!b§ extends EventDispatcher
   {
      
      public static const §]!F§:String = "ExtraBird";
      
      public static const §9!m§:String = "MightyFalcon";
      
      public static const §+!y§:String = "LaserDroid";
      
      public static const §]!&§:String = "SaberSling";
      
      public static const §5n§:String = "ThermalDetonator";
       
      
      protected var §=!7§:§3"x§;
      
      protected var §=!<§:§2!g§;
      
      protected var §@!g§:String;
      
      protected var §>"=§:Boolean;
      
      public function §[!b§()
      {
         this.§=!<§ = new §2!g§();
         super();
         this.§=!<§[§9!m§] = new §0#&§();
         this.§=!<§[§+!y§] = new §0#&§();
         this.§=!<§[§]!&§] = new §0#&§();
         this.§=!<§[§5n§] = new §0#&§();
         this.§=!<§[§5n§] = new §0#&§();
         var _loc1_:§5#+§ = §4"#§.singleton.§1!L§;
         this.§=!7§ = new §3"x§();
         this.§=!7§.§@8§(new §!#2§(§+!y§,§3"x§.§ [§,§,v§,_loc1_.getLocalizedString("powerup_" + §+!y§.toLowerCase()),true));
         this.§=!7§.§@8§(new §!#2§(§]!&§,§3"x§.§ [§,§`"l§,_loc1_.getLocalizedString("powerup_" + §]!&§.toLowerCase()),true));
         this.§=!7§.§@8§(new §!#2§(§5n§,§3"x§.§ [§,§?"+§,_loc1_.getLocalizedString("powerup_" + §5n§.toLowerCase()),true));
         this.§=!7§.§@8§(new §!#2§(§9!m§,§3"x§.§<!j§,§<!V§,_loc1_.getLocalizedString("powerup_" + §9!m§.toLowerCase()),false));
         this.§=!7§.§@8§(new §!#2§(§]!F§,§3"x§.§""J§,§?!^§,_loc1_.getLocalizedString("powerup_" + §]!F§.toLowerCase()),false));
         this.§@!g§ = "";
         this.§>"=§ = false;
      }
      
      public function get §9"7§() : Boolean
      {
         return this.§>"=§;
      }
      
      public function set §9"7§(param1:Boolean) : void
      {
         this.§>"=§ = param1;
         if(this.§>"=§ == false)
         {
            this.§1!O§ = "";
         }
      }
      
      public function get §1!O§() : String
      {
         return this.§@!g§;
      }
      
      public function set §1!O§(param1:String) : void
      {
         this.§@!g§ = param1;
         dispatchEvent(new §?b§(§?b§.§in §,this.§@!g§,-1));
      }
      
      public function get §<!h§() : §3"x§
      {
         return this.§=!7§;
      }
      
      public function §6"0§(param1:String) : int
      {
         if(this.§=!<§[param1] == null)
         {
            return 0;
         }
         return §0#&§(this.§=!<§[param1]).getValue();
      }
      
      public function §2"q§(param1:String, param2:int) : void
      {
         if(this.§=!<§[param1] == undefined)
         {
            this.§=!<§[param1] = new §0#&§();
         }
         var _loc3_:§0#&§ = §0#&§(this.§=!<§[param1]);
         var _loc4_:int = _loc3_.getValue();
         if(param2 > _loc4_ && this.§>"=§)
         {
            this.§1!O§ = param1;
         }
         if(_loc4_ != param2)
         {
            §0#&§(this.§=!<§[param1]).§-[§(param2);
            dispatchEvent(new §?b§(§?b§.§6,§,param1,param2));
         }
      }
      
      public function §5!<§(param1:String) : Boolean
      {
         var _loc2_:§#F§ = §7"1§(§4"#§.singleton.dataModel).§4"-§.§#!n§(param1);
         var _loc3_:int = -1;
         if(_loc2_)
         {
            _loc3_ = _loc2_.daysLeft;
         }
         if(_loc3_ >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function § #,§(param1:String) : void
      {
         var _loc2_:§0#&§ = §0#&§(this.§=!<§[param1]);
         var _loc3_:int = _loc2_.getValue();
         var _loc4_:Boolean;
         if(!(_loc4_ = this.§5!<§(param1)))
         {
            if(_loc3_ <= 0)
            {
               throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
            }
            this.§2"q§(param1,_loc3_ - 1);
         }
      }
      
      public function update(param1:Vector.<§3!i§>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§2"q§(param1[_loc2_].id,param1[_loc2_].count);
            _loc2_++;
         }
      }
   }
}
