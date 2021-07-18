package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §+S§.b2World;
   import §5!V§.§!w§;
   import §5!V§.§8^§;
   import §default§.Sprite;
   
   public class §1!!§ extends §2f§
   {
      
      public static const §="?§:Number = 0.3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §="?§ = 0.3;
         }
      }
      
      private var §+O§:Boolean = false;
      
      private var §6K§:Number = 0;
      
      public function §1!!§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            do
            {
               §'K§ = param11;
               do
               {
                  §`"'§.limitMultiplier = §="?§;
               }
               while(!(_loc13_ || param3));
               
            }
            while(!_loc13_);
            
         }
      }
      
      override public function addDestructionParticles(param1:§-5§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§+O§)
            {
               addr21:
               §§push(§&!>§.§6!3§);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_ || this)
                  {
                  }
               }
            }
            else
            {
               §§push(§&!>§.§;!E§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     addr46:
                     §§push(§§pop());
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     if(§'K§ != "")
                     {
                        param1.§@"&§(§'K§,_loc2_,§-5§.§5Q§,§&!>§.§0!+§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§&!>§.§4%§,0,0,0,0,1,20,true);
                        if(!_loc4_)
                        {
                           addr98:
                        }
                        else
                        {
                           addr139:
                        }
                        return;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        param1.§[b§(_loc2_,§-5§.§5Q§,§&!>§.§0!+§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§&!>§.§4%§);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc9_ || param2)
         {
            §§push(§§pop() <= 0);
            if(_loc9_)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(param3);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr117:
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr118:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr120:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(!(_loc8_ && param2))
                                             {
                                                continue loop0;
                                             }
                                             addr81:
                                             if(!(_loc8_ && param2))
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr96);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                     addr96:
                     §§goto(addr61);
                  }
                  §§goto(addr117);
               }
               §§goto(addr118);
            }
            §§goto(addr117);
         }
         addr61:
         while(§§pop())
         {
            if(_loc9_)
            {
               this.§+O§ = true;
            }
            if(!_loc8_)
            {
               addr114:
               break;
            }
            §§goto(addr120);
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§6K§ > 0)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§6K§);
                  if(_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§6K§ = §§pop();
               }
               §[!g§.mTryToScream = §<Y§.§^!7§;
               return true;
            }
            else
            {
               addr20:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc3_ || _loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr20);
      }
      
      public function §,!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§6K§ = §8^§.§!"%§;
         }
         while(true)
         {
            §[!g§.mTryToScream = §<Y§.§^!7§;
            while(!(_loc1_ && _loc2_))
            {
               playScreamingSoundEffect();
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
   }
}
