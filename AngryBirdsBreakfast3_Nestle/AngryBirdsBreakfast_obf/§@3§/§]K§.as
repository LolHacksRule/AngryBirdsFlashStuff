package §@3§
{
   public class §]K§
   {
      
      public static const §,"3§:String = "none";
      
      public static const §=@§:String = "run";
      
      public static const §%x§:String = "in";
      
      public static const §1o§:String = "out";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §,"3§ = "none";
            while(true)
            {
               §=@§ = "run";
            }
            addr77:
         }
         loop1:
         while(true)
         {
            §%x§ = "in";
            while(!(_loc2_ && §]K§))
            {
               §1o§ = "out";
               if(_loc2_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr77);
            }
         }
      }
      
      private var §&""§:String;
      
      private var §'!z§:String;
      
      private var §3-§:String;
      
      private var § !^§:String;
      
      private var §#!-§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §]K§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            while(true)
            {
               this.§&""§ = param1;
               loop1:
               while(true)
               {
                  this.§#!-§ = param4;
                  addr105:
                  while(true)
                  {
                     this.§3-§ = param2;
                     continue loop1;
                  }
               }
               addr71:
               if(!(_loc7_ || this))
               {
                  continue;
               }
               this.loop = param5;
               loop6:
               while(true)
               {
                  this.stageQuality = param6;
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        addr42:
                        if(!(_loc7_ || this))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop6;
                  }
                  addr69:
                  while(!_loc8_)
                  {
                     §§goto(addr71);
                     §§goto(addr42);
                  }
                  §§goto(addr83);
               }
            }
         }
         while(true)
         {
            this.§ !^§ = param3;
            §§goto(addr69);
         }
      }
      
      public function get startLabel() : String
      {
         return this.§&""§;
      }
      
      public function set startLabel(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&""§ = param1;
            do
            {
               this.§!Y§();
            }
            while(_loc3_);
            
         }
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§'!z§;
      }
      
      public function get §7!r§() : String
      {
         return this.§3-§;
      }
      
      public function set §7!r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3-§ = param1;
         }
      }
      
      public function get §1Q§() : String
      {
         return this.§ !^§;
      }
      
      public function set §1Q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ !^§ = param1;
         }
      }
      
      public function get type() : String
      {
         return this.§#!-§;
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#!-§ = param1;
         }
         do
         {
            this.§!Y§();
         }
         while(_loc3_);
         
      }
      
      protected function §!Y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!z§ = "";
            loop0:
            while(true)
            {
               §§push(this.§#!-§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §,"3§);
                  addr117:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                        addr119:
                     }
                     else
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           if(!(_loc2_ && _loc3_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        var _loc1_:* = this.§#!-§;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§=@§);
                           if(!(_loc2_ && this))
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr152:
                                       §§push(0);
                                       if(!_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr175:
                                       §§push(1);
                                       if(_loc2_)
                                       {
                                          addr200:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§%x§);
                                    if(_loc3_ || this)
                                    {
                                       addr164:
                                       §§push(_loc1_);
                                       if(!_loc2_)
                                       {
                                          addr167:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§goto(addr175);
                                             }
                                             §§goto(addr205);
                                          }
                                          addr181:
                                          if(§1o§ !== _loc1_)
                                          {
                                             addr205:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§'!z§ = §0!'§.§=N§();
                                                   addr38:
                                                   break;
                                                   addr55:
                                                case 1:
                                                   this.§'!z§ = §0!'§.§^I§();
                                                   addr45:
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr55);
                                                   break;
                                                case 2:
                                                   this.§'!z§ = §0!'§.§7!n§();
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr45);
                                                      }
                                                      §§goto(addr38);
                                                   }
                                             }
                                             return;
                                             §§push(3);
                                          }
                                          §§goto(addr205);
                                          §§push(2);
                                          if(_loc3_ || this)
                                          {
                                             §§goto(addr200);
                                          }
                                          §§goto(addr205);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr152);
                        addr77:
                     }
                  }
               }
            }
         }
      }
      
      public function clone() : §]K§
      {
         return new §]K§(this.§&""§,this.§3-§,this.§ !^§,this.§#!-§,this.loop);
      }
   }
}
