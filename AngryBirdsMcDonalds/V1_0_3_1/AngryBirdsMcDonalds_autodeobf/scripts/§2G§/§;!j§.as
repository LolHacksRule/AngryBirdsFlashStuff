package §2G§
{
   import §&c§.Sprite;
   import §0!8§.§;2§;
   import §3!@§.§ s§;
   import §?!§.§%o§;
   import §?!§.§>!4§;
   import §?!g§.§ !d§;
   import §finally§.§@z§;
   import flash.geom.Point;
   
   public class §;!j§ extends §>!4§
   {
      
      private static const §#l§:int = 10;
      
      private static const §]$§:int = 25;
      
      private static const §&!6§:int = 200;
      
      private static const §;_§:int = 20;
      
      private static const §&!4§:int = 100 * § s§.§<!h§;
      
      private static const §=!m§:int = 3;
      
      private static const §set §:Number = 0.5;
       
      
      private var §=!g§:Vector.<§%o§>;
      
      private var §^!1§:Vector.<Object>;
      
      private var §`!>§:Vector.<§%3§>;
      
      private var §&q§:Vector.<§%3§>;
      
      public function §;!j§(param1:§ s§, param2:§@z§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:§%o§ = null;
         this.§`!>§ = new Vector.<§%3§>(3);
         this.§`!>§[0] = new §%3§("BLOCK_FRIES",45,73,§;_§,§=!m§,§set §);
         this.§`!>§[1] = new §%3§("BLOCK_SODA",77,87,§;_§,§=!m§,§set §);
         this.§`!>§[2] = new §%3§("BLOCK_HAMBURGER",92,135,§;_§,§=!m§,§set §);
         this.§&q§ = new Vector.<§%3§>(3);
         this.§&q§[0] = new §%3§("BLOCK_COOKIE_ROUND",10,80,4,0,§set §);
         this.§&q§[1] = new §%3§("BLOCK_COOKIE_RECTANGLE",100,170,4,0,§set §);
         this.§&q§[2] = new §%3§("BLOCK_COOKIE_RECTANGLE",190,350,4,0,§set §);
         this.§^!1§ = new Vector.<Object>();
         this.§=!g§ = new Vector.<§%o§>();
         var _loc1_:int = 0;
         while(_loc1_ < § !i§.length)
         {
            _loc2_ = § !i§[_loc1_];
            if(_loc2_.§3!G§ == "PIG_KING")
            {
               _loc2_.sprite.parent.setChildIndex(_loc2_.sprite,_loc2_.sprite.parent.numChildren - 1);
            }
            _loc1_++;
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%o§
      {
         var _loc10_:§%o§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §[P§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§<J§,param2,param3,param4,param5,false);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §[P§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§<J§,param2,param3,param4,param5,false);
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
         var _loc5_:§%o§;
         if((_loc5_ = § !i§[param1]).§3!G§ == "BLOCK_HAPPYMEAL")
         {
            if(_loc5_.§-&§ <= 0)
            {
               this.§2!G§(_loc5_,"HAPPYMEAL");
            }
         }
         else if(_loc5_.§3!G§ == "BLOCK_LANTERN_ROUND")
         {
            if(_loc5_.§-&§ <= 0)
            {
               this.§2!G§(_loc5_,"LANTERN_ROUND");
            }
         }
         else if(_loc5_.§3!G§ == "BLOCK_LANTERN_RECTANGLE")
         {
            if(_loc5_.§-&§ <= 0)
            {
               this.§2!G§(_loc5_,"LANTERN_RECT");
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%o§
      {
         var _loc10_:§%o§ = null;
         if(param2 == "BLOCK_HAPPYMEAL" || param2 == "BLOCK_FRIES" || param2 == "BLOCK_SODA" || param2 == "BLOCK_HAMBURGER")
         {
            (_loc10_ = new §;l§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§<J§,param2,param3,param4,param5,param9)).uniqueID = §''§();
         }
         else if(param2 == "BLOCK_LANTERN_RECTANGLE" || param2 == "BLOCK_LANTERN_ROUND")
         {
            (_loc10_ = new §^3§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§<J§,param2,param3,param4,param5,param9)).uniqueID = §''§();
         }
         else if(param2 == "BLOCK_COOKIE_RECTANGLE" || param2 == "BLOCK_COOKIE_ROUND")
         {
            (_loc10_ = new §;l§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§<J§,param2,param3,param4,param5,param9)).uniqueID = §''§();
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
         var _loc6_:§=a§ = null;
         super.updateLevelObjectsComplete(param1);
         var _loc2_:§%o§ = null;
         var _loc3_:int = § !i§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = § !i§[_loc3_];
            if(_loc2_.§3!G§ == "BLOCK_HAPPYMEAL" || _loc2_.§3!G§ == "BLOCK_FRIES" || _loc2_.§3!G§ == "BLOCK_SODA" || _loc2_.§3!G§ == "BLOCK_HAMBURGER")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§3!G§ == "BLOCK_LANTERN_ROUND" || _loc2_.§3!G§ == "BLOCK_LANTERN_RECTANGLE")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§3!G§ == "BLOCK_COOKIE_RECTANGLE" || _loc2_.§3!G§ == "BLOCK_COOKIE_ROUND")
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         _loc3_ = this.§^!1§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§^!1§[_loc3_].time) <= 0)
            {
               _loc5_ = this.§^!1§[_loc3_].point;
               _loc6_ = new §=a§(this);
               switch(this.§^!1§[_loc3_].name)
               {
                  case "HAPPYMEAL":
                     break;
                  case "LANTERN_ROUND":
                     _loc6_.§,!2§ = 50;
                     _loc6_.§!!I§ = 4;
                     _loc6_.§else §("BLOCK_LANTERN_ROUND_2",85,95,15);
                     _loc6_.§else §(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§else §(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§else §(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§?c§(_loc5_,30 * § s§.§<!h§);
                     break;
                  case "LANTERN_RECT":
                     _loc6_.§,!2§ = 50;
                     _loc6_.§!!I§ = 4;
                     _loc6_.§else §("BLOCK_LANTERN_RECTANGLE_2",85,95,15);
                     _loc6_.§else §(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§else §(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§else §(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§?c§(_loc5_,30 * § s§.§<!h§);
               }
               this.§^!1§.splice(_loc3_,1);
            }
            else
            {
               this.§^!1§[_loc3_].time = _loc4_ - param1;
            }
            _loc3_--;
         }
      }
      
      private function §2!G§(param1:§%o§, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = new Object();
         _loc3_.point = new Point(param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y);
         _loc3_.time = §&!6§;
         _loc3_.name = param2;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^!1§.length)
         {
            if(((_loc5_ = this.§^!1§[_loc4_]).point as Point).equals(_loc3_.point))
            {
               return;
            }
            _loc4_++;
         }
         this.§^!1§.push(_loc3_);
         §6!J§.push(§6!5§.createExplosion(§6!5§.§?!V§,param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y));
      }
      
      private function §9!k§(param1:§%o§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = new Object();
         _loc2_.point = new Point(param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y);
         _loc2_.time = §&!6§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!1§.length)
         {
            if(((_loc4_ = this.§^!1§[_loc3_]).point as Point).equals(_loc2_.point))
            {
               return;
            }
            _loc3_++;
         }
         this.§^!1§.push(_loc2_);
         §6!J§.push(§6!5§.createExplosion(§6!5§.§?!V§,param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y));
      }
      
      public function §@u§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §;2§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§;2§ = new §;2§(this,_loc5_,mLevelMain.mLevelEngine.mWorld,mLevelMain,§<J§,param1,param2,param3,param4);
         § !i§[§ !i§.length] = _loc6_;
         §@w§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §6!J§.push(§6!5§.createExplosion(param1,param2,param3));
         § !d§.§-h§("TntExplosions","ChannelExplosions");
      }
   }
}
