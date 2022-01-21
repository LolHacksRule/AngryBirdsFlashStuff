package §]!G§
{
   import § !m§.§6h§;
   import §%`§.§"s§;
   import §%`§.§,!k§;
   import §'a§.§0!f§;
   import §+-§.§,K§;
   import §5x§.Sprite;
   import §@!T§.§ l§;
   import flash.geom.Point;
   
   public class §0!g§ extends §,!k§
   {
      
      private static const §^Y§:int = 10;
      
      private static const §95§:int = 25;
      
      private static const § case§:int = 200;
      
      private static const §[X§:int = 20;
      
      private static const §1,§:int = 100 * §0!f§.§<C§;
      
      private static const §[!i§:int = 3;
      
      private static const §#b§:Number = 0.5;
       
      
      private var §]!L§:Vector.<§"s§>;
      
      private var §0!j§:Vector.<Object>;
      
      private var §=L§:Vector.<§ !h§>;
      
      private var §2g§:Vector.<§ !h§>;
      
      public function §0!g§(param1:§0!f§, param2:§,K§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:§"s§ = null;
         this.§=L§ = new Vector.<§ !h§>(3);
         this.§=L§[0] = new § !h§("BLOCK_FRIES",45,73,§[X§,§[!i§,§#b§);
         this.§=L§[1] = new § !h§("BLOCK_SODA",77,87,§[X§,§[!i§,§#b§);
         this.§=L§[2] = new § !h§("BLOCK_HAMBURGER",92,135,§[X§,§[!i§,§#b§);
         this.§2g§ = new Vector.<§ !h§>(3);
         this.§2g§[0] = new § !h§("BLOCK_COOKIE_ROUND",10,80,4,0,§#b§);
         this.§2g§[1] = new § !h§("BLOCK_COOKIE_RECTANGLE",100,170,4,0,§#b§);
         this.§2g§[2] = new § !h§("BLOCK_COOKIE_RECTANGLE",190,350,4,0,§#b§);
         this.§0!j§ = new Vector.<Object>();
         this.§]!L§ = new Vector.<§"s§>();
         var _loc1_:int = 0;
         while(_loc1_ < §5h§.length)
         {
            _loc2_ = §5h§[_loc1_];
            if(_loc2_.§6!?§ == "PIG_KING")
            {
               _loc2_.sprite.parent.setChildIndex(_loc2_.sprite,_loc2_.sprite.parent.numChildren - 1);
            }
            _loc1_++;
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"s§
      {
         var _loc10_:§"s§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §6G§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'B§,param2,param3,param4,param5,false);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §6G§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'B§,param2,param3,param4,param5,false);
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
         var _loc5_:§"s§;
         if((_loc5_ = §5h§[param1]).§6!?§ == "BLOCK_HAPPYMEAL")
         {
            if(_loc5_.§%!a§ <= 0)
            {
               this.§>]§(_loc5_,"HAPPYMEAL");
            }
         }
         else if(_loc5_.§6!?§ == "BLOCK_LANTERN_ROUND")
         {
            if(_loc5_.§%!a§ <= 0)
            {
               this.§>]§(_loc5_,"LANTERN_ROUND");
            }
         }
         else if(_loc5_.§6!?§ == "BLOCK_LANTERN_RECTANGLE")
         {
            if(_loc5_.§%!a§ <= 0)
            {
               this.§>]§(_loc5_,"LANTERN_RECT");
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"s§
      {
         var _loc10_:§"s§ = null;
         if(param2 == "BLOCK_HAPPYMEAL" || param2 == "BLOCK_FRIES" || param2 == "BLOCK_SODA" || param2 == "BLOCK_HAMBURGER")
         {
            (_loc10_ = new §1!e§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'B§,param2,param3,param4,param5,param9)).uniqueID = §?!o§();
         }
         else if(param2 == "BLOCK_LANTERN_RECTANGLE" || param2 == "BLOCK_LANTERN_ROUND")
         {
            (_loc10_ = new §6!J§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'B§,param2,param3,param4,param5,param9)).uniqueID = §?!o§();
         }
         else if(param2 == "BLOCK_COOKIE_RECTANGLE" || param2 == "BLOCK_COOKIE_ROUND")
         {
            (_loc10_ = new §1!e§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'B§,param2,param3,param4,param5,param9)).uniqueID = §?!o§();
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
         var _loc6_:§5!S§ = null;
         super.updateLevelObjectsComplete(param1);
         var _loc2_:§"s§ = null;
         var _loc3_:int = §5h§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §5h§[_loc3_];
            if(_loc2_.§6!?§ == "BLOCK_HAPPYMEAL" || _loc2_.§6!?§ == "BLOCK_FRIES" || _loc2_.§6!?§ == "BLOCK_SODA" || _loc2_.§6!?§ == "BLOCK_HAMBURGER")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§6!?§ == "BLOCK_LANTERN_ROUND" || _loc2_.§6!?§ == "BLOCK_LANTERN_RECTANGLE")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§6!?§ == "BLOCK_COOKIE_RECTANGLE" || _loc2_.§6!?§ == "BLOCK_COOKIE_ROUND")
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         _loc3_ = this.§0!j§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0!j§[_loc3_].time) <= 0)
            {
               _loc5_ = this.§0!j§[_loc3_].point;
               _loc6_ = new §5!S§(this);
               switch(this.§0!j§[_loc3_].name)
               {
                  case "HAPPYMEAL":
                     break;
                  case "LANTERN_ROUND":
                     _loc6_.§[!8§ = 50;
                     _loc6_.§'!'§ = 4;
                     _loc6_.§1!!§("BLOCK_LANTERN_ROUND_2",85,95,15);
                     _loc6_.§1!!§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§1!!§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§1!!§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§ R§(_loc5_,30 * §0!f§.§<C§);
                     break;
                  case "LANTERN_RECT":
                     _loc6_.§[!8§ = 50;
                     _loc6_.§'!'§ = 4;
                     _loc6_.§1!!§("BLOCK_LANTERN_RECTANGLE_2",85,95,15);
                     _loc6_.§1!!§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§1!!§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§1!!§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§ R§(_loc5_,30 * §0!f§.§<C§);
               }
               this.§0!j§.splice(_loc3_,1);
            }
            else
            {
               this.§0!j§[_loc3_].time = _loc4_ - param1;
            }
            _loc3_--;
         }
      }
      
      private function §>]§(param1:§"s§, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = new Object();
         _loc3_.point = new Point(param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y);
         _loc3_.time = § case§;
         _loc3_.name = param2;
         var _loc4_:int = 0;
         while(_loc4_ < this.§0!j§.length)
         {
            if(((_loc5_ = this.§0!j§[_loc4_]).point as Point).equals(_loc3_.point))
            {
               return;
            }
            _loc4_++;
         }
         this.§0!j§.push(_loc3_);
         §"X§.push(§=!k§.createExplosion(§=!k§.§ ]§,param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y));
      }
      
      private function §3k§(param1:§"s§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = new Object();
         _loc2_.point = new Point(param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y);
         _loc2_.time = § case§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!j§.length)
         {
            if(((_loc4_ = this.§0!j§[_loc3_]).point as Point).equals(_loc2_.point))
            {
               return;
            }
            _loc3_++;
         }
         this.§0!j§.push(_loc2_);
         §"X§.push(§=!k§.createExplosion(§=!k§.§ ]§,param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y));
      }
      
      public function §&!1§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : § l§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§ l§ = new § l§(this,_loc5_,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'B§,param1,param2,param3,param4);
         §5h§[§5h§.length] = _loc6_;
         §try §.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §"X§.push(§=!k§.createExplosion(param1,param2,param3));
         §6h§.§-a§("TntExplosions","ChannelExplosions");
      }
   }
}
