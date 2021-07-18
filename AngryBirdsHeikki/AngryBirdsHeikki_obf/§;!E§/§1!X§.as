package §;!E§
{
   import §!E§.§!U§;
   import §"!I§.§^!2§;
   import §+!8§.§,_§;
   import §+!8§.§-!N§;
   import §2Y§.Sprite;
   import §2`§.HighscoreSidebar;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   
   public class §1!X§ extends §-!N§
   {
       
      
      private var §3!#§:Array;
      
      public function §1!X§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
         do
         {
            this.§3!#§ = HighscoreSidebar.§"!P§;
         }
         while(_loc5_);
         
      }
      
      private function §[!7§(param1:Array, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         param1 = this.§>p§(param2).sort(this.§^! §);
         param1 = param1.slice(0,1);
         if(_loc4_)
         {
            param1.forEach(this.§<!P§);
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
         }
         switch(§§pop())
         {
         }
         return §!U§.§each §;
      }
      
      override protected function checkExplosions(param1:§,_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc10_:§,_§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§,_§ = null;
         var _loc11_:* = param2;
         if(!_loc12_)
         {
            if("BIRD_BIG_BROTHER" !== _loc11_)
            {
               if("BIRD_REDBIG_HEIKKI" === _loc11_)
               {
                  §§goto(addr106);
               }
               else
               {
                  §§push(2);
               }
               addr129:
               switch(§§pop())
               {
                  case 0:
                     _loc10_ = new §>!8§(this,param1,§=!V§.mLevelEngine.mWorld,§=!V§,§9=§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 1:
                     _loc10_ = new §>!8§(this,param1,§=!V§.mLevelEngine.mWorld,§=!V§,§9=§,param2,param3,param4,param5,param8,param9);
                     break;
                  default:
                     _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
               }
               return _loc10_;
            }
            if(!(_loc12_ && param2))
            {
               addr99:
               §§push(0);
               if(_loc12_)
               {
               }
            }
            else
            {
               addr106:
               §§push(1);
               if(_loc13_ || this)
               {
               }
            }
            §§goto(addr129);
            §§goto(addr106);
         }
         §§goto(addr99);
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§,_§ = §7@§[param1];
         if(_loc7_)
         {
            super.removeObjectWithIndex(param1,param2,param3,param4);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §`!N§.push(§ 4§.createExplosion(param1,param2,param3));
            do
            {
               §&M§.§6!#§("TntExplosions","ChannelExplosions");
            }
            while(_loc4_ && param1);
            
         }
      }
      
      private function §[?§(param1:int, param2:int, param3:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(Math.random() * 10);
         if(!_loc6_)
         {
            §§push(§§pop() + 1);
         }
         var _loc4_:int = §§pop();
         while(true)
         {
            §§push(param3);
            if(!(_loc6_ && this))
            {
               §§push(_loc4_);
               if(!(_loc6_ && param3))
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     if(_loc5_ || param2)
                     {
                        addr70:
                        param3[param2] = _loc4_;
                     }
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§push(Math.random() * 10);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc4_ = §§pop();
                  }
                  continue;
               }
            }
            §§goto(addr70);
         }
      }
      
      private function §>p§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§,_§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §7@§)
         {
            if(!(_loc7_ && _loc3_))
            {
               if(param1.toUpperCase().indexOf(_loc3_.§>R§.toUpperCase()) != -1)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc2_[_loc2_.length] = _loc3_;
                     if(_loc6_ || param1)
                     {
                        _loc3_.sprite.visible = true;
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function §^! §(param1:Object, param2:Object) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(Math.round(Math.random() * 2) - 1);
         if(!(_loc5_ && _loc3_))
         {
            return Number(§§pop());
         }
      }
      
      private function §<!P§(param1:§,_§, param2:int, param3:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.sprite.visible = false;
         }
         do
         {
            §4!P§(param1,false,false,false);
         }
         while(!(_loc4_ || param1));
         
      }
   }
}
