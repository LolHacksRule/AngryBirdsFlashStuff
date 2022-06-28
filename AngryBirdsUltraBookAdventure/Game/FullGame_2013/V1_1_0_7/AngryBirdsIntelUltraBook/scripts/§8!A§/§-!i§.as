package §8!A§
{
   import §"!i§.§"!'§;
   import §1!B§.§<m§;
   import §2@§.§%E§;
   import §2@§.§+!Y§;
   import §2@§.§1!Q§;
   import §2m§.§<!?§;
   import §=`§.§6!I§;
   import §[!b§.§,!W§;
   import §[!b§.§-!Q§;
   import §`!M§.§%X§;
   import §`g§.§ O§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §-!i§
   {
      
      public static const §>_§:Boolean = true;
       
      
      private var §&!k§:§6!I§;
      
      protected var §>;§:§+!Y§;
      
      protected var §7!"§:Vector.<§8!?§>;
      
      private var §>!E§:Sprite;
      
      private var §3D§:Sprite;
      
      private var §%x§:Sprite;
      
      private var §!!i§:Number;
      
      private var §]!j§:Number;
      
      private var §&!§:Number;
      
      private var §=!H§:Boolean = true;
      
      private var § !g§:Boolean = true;
      
      private var §]S§:§,!W§;
      
      private var §4!b§:Number;
      
      public function §-!i§(param1:String, param2:Number, param3:§6!I§, param4:Number)
      {
         this.§7!"§ = new Vector.<§8!?§>();
         super();
         this.§&!k§ = param3;
         this.§]!j§ = 0;
         this.§&!§ = 0;
         this.§!!i§ = param2;
         this.§>!E§ = new Sprite();
         this.§3D§ = new Sprite();
         this.§%x§ = new Sprite();
         this.§4!b§ = param4;
         this.§;m§(param1,param4);
      }
      
      public function get §;Y§() : Boolean
      {
         return this.§=!H§;
      }
      
      public function get §!!u§() : Sprite
      {
         return this.§%x§;
      }
      
      public function get §8y§() : Sprite
      {
         return this.§>!E§;
      }
      
      public function get §[f§() : Sprite
      {
         return this.§3D§;
      }
      
      protected function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function dispose() : void
      {
         this.§,P§();
         if(this.§>!E§)
         {
            this.§>!E§.dispose();
            this.§>!E§ = null;
         }
         if(this.§3D§)
         {
            this.§3D§.dispose();
            this.§3D§ = null;
         }
         if(this.§%x§)
         {
            this.§%x§.dispose();
            this.§%x§ = null;
         }
      }
      
      public function §,!2§() : Boolean
      {
         return this.§ !g§;
      }
      
      public function §!C§(param1:Boolean) : void
      {
         if(this.§ !g§ == param1)
         {
            return;
         }
         this.§ !g§ = param1;
         if(!param1)
         {
            this.§,P§();
         }
         else
         {
            this.§;m§(this.§>;§.mName,this.§4!b§);
         }
      }
      
      public function §&^§() : String
      {
         return this.§>;§.§8!_§;
      }
      
      private function §,P§() : void
      {
         while(this.§3D§.numChildren > 0)
         {
            this.§3D§.removeChildAt(0,true);
         }
         while(this.§>!E§.numChildren > 0)
         {
            this.§>!E§.removeChildAt(0,true);
         }
         while(this.§7!"§.length > 0)
         {
            this.§7!"§.pop().dispose();
         }
      }
      
      protected function §@!§(param1:§+!Y§, param2:String) : void
      {
      }
      
      private function §;m§(param1:String, param2:Number) : void
      {
         var _loc4_:§1!Q§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§8!?§ = null;
         this.§>;§ = §%E§.§8!G§(param1);
         if(this.§>;§ == null)
         {
            §<m§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §"!'§.§0D§;
            this.§>;§ = §%E§.§8!G§(param1);
         }
         this.§@!§(this.§>;§,param1);
         this.§>!E§.y = this.§!!i§;
         this.§3D§.y = this.§!!i§;
         this.§%x§.y = this.§!!i§;
         this.§<!Y§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§>;§.§7!"§.length)
         {
            _loc4_ = this.§>;§.§7!"§[_loc3_];
            if(!§<!?§.§@!_§ || !_loc4_.§2"§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§4F§(_loc4_,_loc5_,this.§&!k§,param2);
               this.§7!"§.push(_loc6_);
               if(_loc6_.§]"!§)
               {
                  this.§3D§.addChild(_loc5_);
               }
               else
               {
                  this.§>!E§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§@k§)
            {
               this.§`!l§(parseInt(_loc4_.§@k§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §4F§(param1:§1!Q§, param2:Sprite, param3:§6!I§, param4:Number) : §8!?§
      {
         return new §8!?§(param1,param2,param3,param4);
      }
      
      private function §<!Y§() : void
      {
         var _loc1_:§ O§ = null;
         if(this.§>;§.§+%§)
         {
            this.§`!l§(this.§>;§.§+%§);
         }
         if(this.§>;§.§#r§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§>;§.§#r§));
            _loc1_.y = 0;
            this.§%x§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : § O§
      {
         return new § O§(4096,4096,param1);
      }
      
      protected function §`!l§(param1:int) : void
      {
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.color = param1;
         }
      }
      
      public function §&!$§(param1:String, param2:§6!I§ = null) : void
      {
         if(param2)
         {
            this.§&!k§ = param2;
         }
         this.§,P§();
         §<m§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§;m§(param1,this.§4!b§);
      }
      
      public function §'6§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§8!?§ = null;
         if(param1 == this.§=!H§)
         {
            return;
         }
         this.§=!H§ = param1;
         for each(_loc3_ in this.§7!"§)
         {
            _loc3_.§'6§(param1);
         }
      }
      
      public function §3!c§() : void
      {
         if(§-!Q§.§]a§("CHANNEL_AMBIENT") == null || !§-!Q§.§]a§("CHANNEL_AMBIENT").§!!#§())
         {
            §-!Q§.§#3§(this.§>;§.§9E§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §4!=§() : void
      {
         §-!Q§.§^B§("CHANNEL_AMBIENT");
      }
      
      public function §"Z§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§>!E§.numChildren)
         {
            _loc2_ = this.§>!E§.getChildAt(param1);
         }
         else if(param1 - this.§>!E§.numChildren < this.§3D§.numChildren)
         {
            _loc2_ = this.§3D§.getChildAt(param1 - this.§>!E§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§]!j§ = param1;
         this.§&!§ = param2;
         if(this.§7!"§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§7!"§.length)
            {
               this.§7!"§[_loc3_].setSideScroll(this.§]!j§,this.§&!§);
               _loc3_++;
            }
         }
         if(this.§%x§ != null)
         {
            this.§%x§.scaleX = this.§%x§.scaleY = 1 / §%X§.§'!f§;
            this.§%x§.x = -§%X§.§+!_§ * (1 / §%X§.§'!f§);
            this.§%x§.y = this.§!!i§ - this.§&!§;
         }
      }
      
      public function § !y§() : String
      {
         return this.§>;§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
