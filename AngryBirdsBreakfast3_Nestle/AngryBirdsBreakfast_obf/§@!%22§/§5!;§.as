package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §5!;§ extends §@_§
   {
      
      public static const §`!I§:Number = 1000;
      
      public static const §@""§:Number = 500;
      
      public static const §;1§:String = "yell";
      
      public static const §>!d§:String = "blink";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!I§ = 1000;
         }
         while(true)
         {
            §@""§ = 500;
            while(_loc2_ || _loc1_)
            {
               §;1§ = "yell";
               while(!_loc1_)
               {
                  §>!d§ = "blink";
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected var §!!g§:Number = -1.0;
      
      protected var §+'§:Number = -1.0;
      
      public function §5!;§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function get §7!s§() : Boolean
      {
         return this.§+'§ >= 0;
      }
      
      public function get §+!3§() : Boolean
      {
         return this.§!!g§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§7!s§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr69:
                        §§pop();
                        §§push(this.§+!3§);
                        if(_loc1_)
                        {
                           addr74:
                           return !§§pop();
                        }
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr69);
      }
      
      public function scream() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!!g§ = §`!I§;
         }
         while(true)
         {
            this.§+'§ = -1;
            while(!(_loc2_ && this))
            {
               §=K§.setAnimation(§;1§,false);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function blink() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§+'§ = §@""§;
            while(true)
            {
               this.§!!g§ = -1;
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §=K§.setAnimation(§>!d§,false);
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=K§.setAnimation(§&P§,false);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§+!3§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§!!g§);
                     if(_loc5_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§!!g§ = §§pop();
                     addr118:
                     while(true)
                     {
                     }
                  }
                  addr110:
               }
               while(true)
               {
                  §§push(this.§7!s§);
                  loop4:
                  for(; _loc5_; while(true)
                  {
                     §§push(this.isNormal);
                     if(_loc4_ && param2)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        §§goto(addr61);
                     }
                     addr24:
                     while(true)
                     {
                        super.render(param1,param2,param3);
                        if(!_loc4_)
                        {
                           continue loop7;
                        }
                        continue loop8;
                     }
                     addr39:
                     return;
                  })
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(_loc5_ || param3)
                     {
                        §§push(this);
                        §§push(this.§+'§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§+'§ = §§pop();
                     }
                     loop5:
                     while(_loc5_)
                     {
                        continue loop4;
                        while(true)
                        {
                           if(!(_loc5_ || this))
                           {
                              continue loop5;
                           }
                           this.normalize();
                           while(!_loc4_)
                           {
                              while(true)
                              {
                                 §§goto(addr24);
                              }
                           }
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr118);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8!U§(§89§.§3!M§);
         }
      }
   }
}
