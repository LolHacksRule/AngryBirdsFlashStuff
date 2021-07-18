package §@!"§
{
   import §%8§.§@-§;
   import §3!J§.Sprite;
   import §;g§.§'c§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §@V§.§&#§;
   import §@V§.§0"§;
   
   public class §`=§ extends §&#§
   {
      
      private static const §5i§:Number = 20;
      
      private static const §;<§:Number = 720;
      
      public static const §3L§:Number = 1.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §`=§)
         {
            §5i§ = 20;
            while(true)
            {
               §;<§ = 720;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §3L§ = 1.5;
                     if(_loc2_ || §`=§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      private var §>i§:Object;
      
      private var §4`§:§]W§ = null;
      
      public function §`=§(param1:§0"§, param2:Sprite, param3:String, param4:§@-§, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param1))
         {
            this.§>i§ = new Object();
            do
            {
               super(param1,param2,param3,param4,param5,param6,param7,param8);
            }
            while(_loc9_);
            
         }
      }
      
      public function §6s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §;!d§ = false;
         }
         loop0:
         while(true)
         {
            §3I§ = -1;
            loop1:
            while(true)
            {
               this.§>i§.x = param1;
               while(true)
               {
                  this.§>i§.y = param2;
                  loop3:
                  while(true)
                  {
                     this.§>i§.rotation = §'!U§;
                     loop4:
                     while(true)
                     {
                        if(param5)
                        {
                           if(!_loc7_)
                           {
                              continue loop3;
                           }
                           addr138:
                           while(_loc6_)
                           {
                              while(true)
                              {
                                 this.§4`§.onComplete = this.§4n§;
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                                 addr55:
                              }
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                        this.§4`§ = §'c§.§,2§.§4!t§(null,null,null,§3L§);
                     }
                  }
               }
            }
         }
      }
      
      private function §4n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4`§ = null;
            while(true)
            {
               §0!-§ = this.§>i§.rotation;
               while(!(_loc1_ && _loc1_))
               {
                  §4!G§ = §'!U§;
                  while(_loc2_)
                  {
                     setPosition(this.§>i§.x,this.§>i§.y);
                     loop3:
                     while(!(_loc1_ && this))
                     {
                        §;!d§ = false;
                        while(true)
                        {
                           §3I§ = -1;
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§4`§);
            if(!_loc4_)
            {
               if(§§pop() == null)
               {
                  super.update(param1,param2,param3);
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc5_)
                        {
                           loop0:
                           while(true)
                           {
                              §§push(this.§4`§);
                              while(true)
                              {
                                 §§pop().play();
                                 addr106:
                                 loop2:
                                 while(true)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       setPosition(this.§>i§.x,this.§>i§.y);
                                       loop4:
                                       while(true)
                                       {
                                          §0!-§ = this.§>i§.rotation;
                                          addr70:
                                          loop8:
                                          while(true)
                                          {
                                             this.updateRenderer();
                                             addr42:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc4_ && param1)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                addr87:
                                                while(true)
                                                {
                                                   §§push(this.§4`§);
                                                   if(!_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop().isPaused)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr42);
               }
               §§goto(addr87);
            }
            §§goto(addr101);
         }
         §§goto(addr70);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4`§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        addr57:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              while(!_loc1_)
                              {
                              }
                              continue loop0;
                              addr61:
                           }
                           while(true)
                           {
                              super.updateRenderer();
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr61);
                           }
                           §§goto(addr29);
                        }
                        return;
                        addr55:
                     }
                  }
               }
               addr81:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         addr29:
      }
      
      public function §]S§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§4`§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§push(true);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§4`§ != null)
            {
               if(_loc3_)
               {
                  addr35:
                  §§push(false);
                  if(!(_loc2_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr35);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§4`§ != null)
            {
               if(!_loc3_)
               {
                  return;
               }
               addr67:
               while(true)
               {
               }
               addr67:
            }
            while(true)
            {
               super.updateGroundControl(param1);
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
