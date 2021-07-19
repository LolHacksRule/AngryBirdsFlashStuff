package com.angrybirds.utils
{
   import §'!3§.§!i§;
   import §1![§.§#E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §8!+§ implements §30§
   {
      
      public static const §;Z§:String = "StatsLevelCount";
      
      public static const §"s§:String = "StatsGameLoadedCount";
      
      private static const §3l§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;Z§ = "StatsLevelCount";
         }
         do
         {
            §"s§ = "StatsGameLoadedCount";
            do
            {
               §3l§ = 10;
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      private var §=5§:Timer;
      
      private var §1"3§:Array;
      
      public function §8!+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§1"3§ = [];
         }
         while(true)
         {
            super();
            while(_loc2_ || _loc1_)
            {
               this.§=5§ = new Timer(1000,§3l§);
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §1x§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§#E§ = null;
         var _loc2_:String = "tracking";
         var _loc5_:* = param1;
         if(!_loc6_)
         {
            §§push(§;Z§);
            if(!_loc6_)
            {
               §§push(_loc5_);
               if(_loc7_ || this)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(0);
                        if(_loc7_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr182:
                        §§push(1);
                        if(_loc7_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr205);
                  }
                  else
                  {
                     addr180:
                     §§push(§"s§);
                     §§push(_loc5_);
                  }
                  §§goto(addr182);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr182);
               }
               else
               {
                  §§push(2);
               }
               addr205:
               switch(§§pop())
               {
                  case 0:
                     if(!this.§=5§.running)
                     {
                        if(_loc7_)
                        {
                           §§push("type");
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§;Z§);
                              if(_loc7_)
                              {
                                 §§push("value");
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(null);
                                    if(!_loc6_)
                                    {
                                       _loc3_ = §§pop();
                                       _loc4_ = new §#E§(_loc3_,AngryBirdsCustom.§;"1§ + _loc2_,this,§#E§.§3b§);
                                       if(!(_loc6_ && this))
                                       {
                                          this.§1"3§.push(_loc4_);
                                          loop0:
                                          while(true)
                                          {
                                             addr105:
                                             while(true)
                                             {
                                                this.§=5§.reset();
                                                continue loop0;
                                             }
                                          }
                                          addr114:
                                       }
                                       while(true)
                                       {
                                          this.§=5§.start();
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr114);
                                          }
                                          §§goto(addr105);
                                       }
                                       addr115:
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr120:
                                    §§push(null);
                                 }
                                 _loc3_ = §§pop();
                                 _loc4_ = new §#E§(_loc3_,AngryBirdsCustom.§;"1§ + _loc2_,this,§#E§.§3b§);
                                 if(!_loc6_)
                                 {
                                    this.§1"3§.push(_loc4_);
                                 }
                                 break;
                              }
                              addr119:
                              §§push("value");
                              §§goto(addr120);
                           }
                           else
                           {
                              addr118:
                              §§push(§"s§);
                           }
                           §§goto(addr119);
                        }
                        break;
                     }
                     §§goto(addr115);
                  case 1:
                     §§goto(addr118);
               }
               "type";
               return;
            }
            §§goto(addr180);
         }
         §§goto(addr182);
      }
      
      public function §9"$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#E§ = null;
         for each(_loc1_ in this.§1"3§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.dispose();
            }
            _loc1_ = null;
         }
         if(!(_loc5_ && _loc1_))
         {
            this.§1"3§ = [];
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§ !4§.§%"7§);
            while(true)
            {
               (§§pop() as AngryBirdsCustom).§+!J§.closeAllPopups();
               §§goto(addr63);
            }
         }
         addr63:
         while(true)
         {
            §§push(§ !4§.§%"7§);
            if(_loc2_)
            {
               (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new §!i§());
               if(!_loc3_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
   }
}
