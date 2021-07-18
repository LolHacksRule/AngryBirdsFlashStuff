package §>1§
{
   public class §2B§
   {
      
      public static const §0!&§:String = "none";
      
      public static const §+!_§:String = "run";
      
      public static const §"<§:String = "in";
      
      public static const §-!S§:String = "out";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!&§ = "none";
         }
         loop0:
         while(true)
         {
            §+!_§ = "run";
            while(true)
            {
               §"<§ = "in";
               while(_loc2_)
               {
                  continue loop0;
                  §-!S§ = "out";
                  if(!(_loc1_ && §2B§))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §]H§:String;
      
      private var §^i§:String;
      
      private var §'!X§:String;
      
      private var §`P§:String;
      
      private var §^"'§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §2B§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§]H§ = param1;
               loop1:
               for(; !(_loc8_ && param1); if(_loc8_ && param1)
               {
                  continue;
               },this.loop = param5,§§goto(addr62))
               {
                  this.§^"'§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§'!X§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§`P§ = param3;
                        while(true)
                        {
                           if(_loc7_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                           addr45:
                           if(_loc7_)
                           {
                              this.§,![§();
                              addr57:
                              if(_loc7_ || param1)
                              {
                                 return;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!(_loc7_ || param3))
                                 {
                                    while(_loc7_)
                                    {
                                       this.stageQuality = param6;
                                       continue loop6;
                                    }
                                    continue loop2;
                                    addr62:
                                 }
                                 §§goto(addr45);
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function get startLabel() : String
      {
         return this.§]H§;
      }
      
      public function set startLabel(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§]H§ = param1;
            do
            {
               this.§,![§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§^i§;
      }
      
      public function get §'!J§() : String
      {
         return this.§'!X§;
      }
      
      public function set §'!J§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!X§ = param1;
         }
      }
      
      public function get §1!p§() : String
      {
         return this.§`P§;
      }
      
      public function set §1!p§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§`P§ = param1;
         }
      }
      
      public function get type() : String
      {
         return this.§^"'§;
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^"'§ = param1;
         }
         do
         {
            this.§,![§();
         }
         while(!_loc3_);
         
      }
      
      protected function §,![§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^i§ = "";
         }
         loop0:
         while(true)
         {
            §§push(this.§^"'§);
            while(true)
            {
               §§push(§§pop() == §0!&§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc3_ || _loc2_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                     var _loc1_:* = this.§^"'§;
                     if(_loc3_ || this)
                     {
                        §§push(§+!_§);
                        if(_loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(0);
                                    if(_loc2_ && this)
                                    {
                                       addr195:
                                    }
                                 }
                                 else
                                 {
                                    addr182:
                                    §§push(2);
                                    if(_loc3_)
                                    {
                                       §§goto(addr195);
                                    }
                                 }
                                 §§goto(addr200);
                              }
                              §§push(§"<§);
                              if(_loc3_ || this)
                              {
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr175:
                                          §§push(1);
                                          if(_loc2_)
                                          {
                                             §§goto(addr195);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr182);
                                       }
                                       §§goto(addr200);
                                    }
                                    else
                                    {
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              addr181:
                              if(§-!S§ === _loc1_)
                              {
                                 §§goto(addr182);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr200:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§^i§ = §7a§.§0-§();
                                    if(_loc3_)
                                    {
                                       addr38:
                                       break;
                                    }
                                    break;
                                 case 1:
                                    this.§^i§ = §7a§.§;!W§();
                                    break;
                                    addr45:
                                 case 2:
                                    this.§^i§ = §7a§.§!7§();
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr38);
                                       }
                                       else
                                       {
                                          §§goto(addr45);
                                       }
                                    }
                              }
                              return;
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr175);
                     addr65:
                  }
               }
               addr92:
               addr110:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
               §§push(this.§]H§);
               if(!_loc3_)
               {
                  continue;
               }
               §§push(§§pop() == "");
               if(_loc3_)
               {
                  §§goto(addr65);
               }
               else
               {
                  §§goto(addr92);
               }
            }
         }
      }
      
      public function clone() : §2B§
      {
         return new §2B§(this.§]H§,this.§'!X§,this.§`P§,this.§^"'§,this.loop);
      }
   }
}
