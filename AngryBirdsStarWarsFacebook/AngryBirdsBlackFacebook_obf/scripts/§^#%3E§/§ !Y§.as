package §^#>§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7P§.§=1§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   
   public class § !Y§ extends §2#!§
   {
       
      
      private var §^#^§:§8!B§;
      
      public function § !Y§(param1:§#_§, param2:§8!B§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§^#^§ = param2;
            do
            {
               super(param1,param2,param3);
            }
            while(!_loc5_);
            
         }
      }
      
      override public function useMightyEagle() : §`"]§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`"]§ = null;
         if(_loc4_ || _loc1_)
         {
            if(§,!?§.length > 0)
            {
               addr31:
               _loc2_ = §,!?§[0];
               if(!(_loc3_ && _loc1_))
               {
                  if(_loc2_.name == §=1§.§+"§)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        return null;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr73);
               }
               §%"'§(0,true);
            }
            addr73:
            var _loc1_:§`"]§ = addSlingshotObject(§=1§.§+"§,§8!+§,§=!Z§,0,0);
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.setOnSlingshot(true);
               do
               {
                  _loc1_.§6<§ = false;
                  do
                  {
                     §8"F§(§<"F§);
                  }
                  while(!(_loc4_ || this));
                  
               }
               while(!(_loc4_ || this));
               
            }
            return _loc1_;
         }
         §§goto(addr31);
      }
      
      override protected function playStretchSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?!r§.§"#_§("slingshot_streched");
         }
      }
      
      override protected function getRopeImage(param1:uint) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc4_ && param1))
         {
            §§push(§6e§.frameCount > 3);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        addr57:
                        if(param1 == §+#5§)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr109);
                     }
                     addr58:
                     _loc2_ = §6e§.getFrame(3);
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.pivotX = 0;
                     }
                     else if(true)
                     {
                        addr109:
                        return super.getRopeImage(param1);
                     }
                     _loc2_.pivotY = 0;
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override protected function showDestructionParticles(param1:§`"]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1.name == §=1§.§+"§)
            {
               if(!_loc3_)
               {
                  §§goto(addr62);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr63:
               }
            }
            while(true)
            {
               super.showDestructionParticles(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr63);
            }
            return;
         }
         addr62:
      }
      
      override protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(§6e§.frameCount > 3);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr62);
            }
            addr51:
            §§pop();
            if(!(_loc5_ && param2))
            {
               addr62:
               if(param1 != §+#5§)
               {
                  return super.getHolsterImage(param1,param2);
               }
            }
            _loc3_ = §6e§.getFrame(2);
            if(_loc4_)
            {
               _loc3_.pivotX = 0;
            }
            _loc3_.pivotY = 0;
            return _loc3_;
         }
         §§goto(addr62);
      }
      
      override protected function groundSlingshot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§^#^§.name == "boss_trenchrun")
            {
               if(_loc1_ || this)
               {
                  §§goto(addr61);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr62:
               }
            }
            while(true)
            {
               super.groundSlingshot();
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr62);
            }
            return;
         }
         addr61:
      }
   }
}
