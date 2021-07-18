package §5!M§
{
   import §!X§.§#K§;
   import §!X§.§9k§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §?m§.§7?§;
   import §]@§.Sprite;
   
   public class §%!T§ extends §9k§
   {
      
      private static const §1!9§:Number = 10;
      
      public static const §7C§:Number = 1.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1!9§ = 10;
            do
            {
               §7C§ = 1.2;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §=d§:§&!!§;
      
      private var §5+§:Object;
      
      public function §%!T§(param1:§#K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      public function §0+§(param1:Number, param2:Number, param3:Boolean = true) : §&!!§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §9M§ = false;
            while(true)
            {
               §-!-§ = -1;
               loop1:
               for(; !_loc4_; while(!(_loc4_ && param2))
               {
                  if(!param3)
                  {
                     this.§=d§ = §';§.§%!O§.§set §(null,null,null,§%!T§.§7C§);
                     §§goto(addr78);
                  }
                  §§goto(addr96);
               })
               {
                  this.§5+§ = new Object();
                  loop2:
                  while(true)
                  {
                     this.§5+§.x = §<!Y§;
                     loop3:
                     while(true)
                     {
                        this.§5+§.y = § l§;
                        loop4:
                        while(true)
                        {
                           this.§5+§.rotation = §50§;
                           continue loop1;
                           addr85:
                           if(_loc4_ && param2)
                           {
                              continue;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(this.§=d§);
                              while(true)
                              {
                                 §§pop().play();
                                 while(true)
                                 {
                                    §§push(this.§=d§);
                                    while(true)
                                    {
                                       §§pop().onComplete = this.§]A§;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       addr48:
                                       if(!(_loc4_ && param2))
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                       addr78:
                                       while(true)
                                       {
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr85);
                                          §§goto(addr48);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              return §§pop();
                              addr188:
                              while(true)
                              {
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      public function §]A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§=d§ != null)
            {
               loop0:
               while(true)
               {
                  this.§=d§ = null;
                  while(true)
                  {
                     §50§ = this.§5+§.rotation;
                     loop2:
                     while(_loc2_)
                     {
                        setPosition(this.§5+§.x,this.§5+§.y);
                        loop3:
                        while(true)
                        {
                           §9M§ = false;
                           loop4:
                           while(!_loc1_)
                           {
                              §-!-§ = -1;
                              while(!_loc1_)
                              {
                                 (§7?§.§4!H§ as §<e§).slingshot.setSlingShotState(§#K§.§-I§);
                                 if(_loc2_ || this)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(!_loc1_)
                                       {
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.§=d§ == null)
            {
               super.update(param1,param2,param3);
               if(!(_loc5_ && this))
               {
                  if(_loc5_)
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc5_ && param2)
                        {
                           continue;
                        }
                        §>!Q§();
                        while(!(_loc4_ || this))
                        {
                           while(true)
                           {
                              §50§ = this.§5+§.rotation;
                              continue loop0;
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr54);
            }
            §§goto(addr93);
         }
         §§goto(addr61);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§=d§ != null)
            {
               if(!(_loc3_ && param1))
               {
                  addr49:
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§=d§ == null)
            {
               do
               {
                  super.updateGroundControl(param1);
               }
               while(_loc2_ && param1);
               
               if(!(_loc2_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      public function get §2i§() : §&!!§
      {
         return this.§=d§;
      }
   }
}
