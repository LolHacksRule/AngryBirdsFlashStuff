package §5!o§
{
   import §-!#§.§5!6§;
   import §2!g§.Sprite;
   import §5!G§.§6!Y§;
   import §5!G§.§8+§;
   import §@!b§.§@!k§;
   import §`!d§.§0%§;
   import flash.geom.Point;
   import §throw§.§3M§;
   
   public class §0!V§ extends §8+§
   {
      
      private static const §8m§:int = 10;
      
      private static const §"!d§:int = 25;
      
      private static const §=!B§:int = 200;
      
      private static const §0!e§:int = 20;
      
      private static const §97§:int = 100 * §@!k§.§2!J§;
      
      private static const §`0§:int = 3;
      
      private static const §2j§:Number = 0.5;
       
      
      private var § !G§:Vector.<§6!Y§>;
      
      private var §[g§:Vector.<Object>;
      
      private var §`!G§:Vector.<§5i§>;
      
      private var §+]§:Vector.<§5i§>;
      
      public function §0!V§(param1:§@!k§, param2:§0%§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:§6!Y§ = null;
         this.§`!G§ = new Vector.<§5i§>(3);
         this.§`!G§[0] = new §5i§("BLOCK_FRIES",45,73,§0!e§,§`0§,§2j§);
         this.§`!G§[1] = new §5i§("BLOCK_SODA",77,87,§0!e§,§`0§,§2j§);
         this.§`!G§[2] = new §5i§("BLOCK_HAMBURGER",92,135,§0!e§,§`0§,§2j§);
         this.§+]§ = new Vector.<§5i§>(3);
         this.§+]§[0] = new §5i§("BLOCK_COOKIE_ROUND",10,80,4,0,§2j§);
         this.§+]§[1] = new §5i§("BLOCK_COOKIE_RECTANGLE",100,170,4,0,§2j§);
         this.§+]§[2] = new §5i§("BLOCK_COOKIE_RECTANGLE",190,350,4,0,§2j§);
         this.§[g§ = new Vector.<Object>();
         this.§ !G§ = new Vector.<§6!Y§>();
         var _loc1_:int = 0;
         while(_loc1_ < §+!B§.length)
         {
            _loc2_ = §+!B§[_loc1_];
            if(_loc2_.§@!i§ == "PIG_KING")
            {
               _loc2_.sprite.parent.setChildIndex(_loc2_.sprite,_loc2_.sprite.parent.numChildren - 1);
            }
            _loc1_++;
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §6!Y§
      {
         var _loc10_:§6!Y§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §=$§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§#!4§,param2,param3,param4,param5,false);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §=$§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§#!4§,param2,param3,param4,param5,false);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§6!Y§;
         if((_loc5_ = §+!B§[param1]).§@!i§ == "BLOCK_HAPPYMEAL")
         {
            if(_loc5_.§%!C§ <= 0)
            {
               this.§ 4§(_loc5_,"HAPPYMEAL");
            }
         }
         else if(_loc5_.§@!i§ == "BLOCK_LANTERN_ROUND")
         {
            if(_loc5_.§%!C§ <= 0)
            {
               this.§ 4§(_loc5_,"LANTERN_ROUND");
            }
         }
         else if(_loc5_.§@!i§ == "BLOCK_LANTERN_RECTANGLE")
         {
            if(_loc5_.§%!C§ <= 0)
            {
               this.§ 4§(_loc5_,"LANTERN_RECT");
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §6!Y§
      {
         var _loc10_:§6!Y§ = null;
         if(param2 == "BLOCK_HAPPYMEAL" || param2 == "BLOCK_FRIES" || param2 == "BLOCK_SODA" || param2 == "BLOCK_HAMBURGER")
         {
            (_loc10_ = new §2S§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§#!4§,param2,param3,param4,param5,param9)).uniqueID = §]!f§();
         }
         else if(param2 == "BLOCK_LANTERN_RECTANGLE" || param2 == "BLOCK_LANTERN_ROUND")
         {
            (_loc10_ = new §^q§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§#!4§,param2,param3,param4,param5,param9)).uniqueID = §]!f§();
         }
         else if(param2 == "BLOCK_COOKIE_RECTANGLE" || param2 == "BLOCK_COOKIE_ROUND")
         {
            (_loc10_ = new §2S§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§#!4§,param2,param3,param4,param5,param9)).uniqueID = §]!f§();
         }
         else
         {
            _loc10_ = super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:§<>§ = null;
         super.updateLevelObjectsComplete(param1);
         var _loc2_:§6!Y§ = null;
         var _loc3_:int = §+!B§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §+!B§[_loc3_];
            if(_loc2_.§@!i§ == "BLOCK_HAPPYMEAL" || _loc2_.§@!i§ == "BLOCK_FRIES" || _loc2_.§@!i§ == "BLOCK_SODA" || _loc2_.§@!i§ == "BLOCK_HAMBURGER")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§@!i§ == "BLOCK_LANTERN_ROUND" || _loc2_.§@!i§ == "BLOCK_LANTERN_RECTANGLE")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§@!i§ == "BLOCK_COOKIE_RECTANGLE" || _loc2_.§@!i§ == "BLOCK_COOKIE_ROUND")
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         _loc3_ = this.§[g§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§[g§[_loc3_].time) <= 0)
            {
               _loc5_ = this.§[g§[_loc3_].point;
               _loc6_ = new §<>§(this);
               switch(this.§[g§[_loc3_].name)
               {
                  case "HAPPYMEAL":
                     break;
                  case "LANTERN_ROUND":
                     _loc6_.§;!o§ = 50;
                     _loc6_.§'=§ = 4;
                     _loc6_.§[E§("BLOCK_LANTERN_ROUND_2",85,95,15);
                     _loc6_.§[E§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§[E§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§[E§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§3!+§(_loc5_,30 * §@!k§.§2!J§);
                     break;
                  case "LANTERN_RECT":
                     _loc6_.§;!o§ = 50;
                     _loc6_.§'=§ = 4;
                     _loc6_.§[E§("BLOCK_LANTERN_RECTANGLE_2",85,95,15);
                     _loc6_.§[E§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§[E§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§[E§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§3!+§(_loc5_,30 * §@!k§.§2!J§);
               }
               this.§[g§.splice(_loc3_,1);
            }
            else
            {
               this.§[g§[_loc3_].time = _loc4_ - param1;
            }
            _loc3_--;
         }
      }
      
      private function § 4§(param1:§6!Y§, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = new Object();
         _loc3_.point = new Point(param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y);
         _loc3_.time = §=!B§;
         _loc3_.name = param2;
         var _loc4_:int = 0;
         while(_loc4_ < this.§[g§.length)
         {
            if(((_loc5_ = this.§[g§[_loc4_]).point as Point).equals(_loc3_.point))
            {
               return;
            }
            _loc4_++;
         }
         this.§[g§.push(_loc3_);
         §<!A§.push(§]Y§.createExplosion(§]Y§.§4!J§,param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y));
      }
      
      private function §;M§(param1:§6!Y§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = new Object();
         _loc2_.point = new Point(param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y);
         _loc2_.time = §=!B§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§[g§.length)
         {
            if(((_loc4_ = this.§[g§[_loc3_]).point as Point).equals(_loc2_.point))
            {
               return;
            }
            _loc3_++;
         }
         this.§[g§.push(_loc2_);
         §<!A§.push(§]Y§.createExplosion(§]Y§.§4!J§,param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y));
      }
      
      public function §=!a§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §3M§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§3M§ = new §3M§(this,_loc5_,mLevelMain.mLevelEngine.mWorld,mLevelMain,§#!4§,param1,param2,param3,param4);
         §+!B§[§+!B§.length] = _loc6_;
         § 0§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §<!A§.push(§]Y§.createExplosion(param1,param2,param3));
         §5!6§.§8!G§("TntExplosions","ChannelExplosions");
      }
   }
}
