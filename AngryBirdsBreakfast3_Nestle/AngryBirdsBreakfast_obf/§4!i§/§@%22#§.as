package §4!i§
{
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§]"%§;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §@"#§
   {
      
      public static const §7?§:String = "en";
      
      public static var §]!v§:Boolean = true;
      
      private static var §'E§:§@"#§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7?§ = "en";
            do
            {
               §]!v§ = true;
            }
            while(_loc2_ && §@"#§);
            
         }
      }
      
      private var §3A§:Vector.<String>;
      
      private var §3!`§:String = "en";
      
      private var §,!l§:String;
      
      private var §9!#§:XML;
      
      public function §@"#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §,2§() : §@"#§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§'E§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && §@"#§))
                  {
                     addr61:
                     §'E§ = new §@"#§();
                  }
               }
               return §'E§;
            }
         }
         §§goto(addr61);
      }
      
      public function §%!p§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || _loc3_)
         {
            this.§9!#§ = param1;
            if(!_loc6_)
            {
               this.§3A§ = new Vector.<String>();
            }
         }
         for each(_loc2_ in this.§9!#§.language)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(_loc2_.@id != "")
               {
                  if(_loc5_ || this)
                  {
                     this.§3A§.push(_loc2_.@id);
                  }
               }
            }
         }
      }
      
      public function updateTextFields(param1:§,6§, param2:String) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     while(_loc12_)
                     {
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[5] = false;
                              addr182:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop6;
                              }
                           }
                           if(!(_loc12_ || this))
                           {
                              continue;
                           }
                           §§push(§§newactivation());
                           if(!_loc11_)
                           {
                              if(!_loc11_)
                              {
                                 §§goto(addr28);
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr197);
                        }
                     }
                     continue loop1;
                     if(_loc11_ && param2)
                     {
                        continue;
                     }
                     §§goto(addr127);
                     §§push(null);
                  }
               }
            }
         }
      }
      
      public function §#!Q§(param1:String, param2:String) : String
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr69:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr70:
               while(true)
               {
                  addr61:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(param1);
                        addr64:
                        while(true)
                        {
                           §§pop().§§slot[1] = §§pop();
                           addr65:
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(_loc16_ && _loc3_)
                              {
                                 break;
                              }
                              if(_loc15_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr72:
                           var _loc5_:int = 0;
                           var _loc8_:int = 0;
                           var _loc11_:int = 0;
                           var _loc12_:* = §§checkfilter(this.§9!#§.group);
                           var _loc10_:* = new XMLList("");
                           addr113:
                           for each(var _loc13_ in _loc12_)
                           {
                              var _loc14_:*;
                              with(_loc14_ = _loc13_)
                              {
                                 
                                 if(!_loc16_)
                                 {
                                    if(@name == groupId)
                                    {
                                       if(!_loc16_)
                                       {
                                          addr106:
                                          _loc10_[_loc11_] = _loc13_;
                                       }
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr106);
                           }
                           var _loc9_:* = §§checkfilter(_loc10_.manual.text);
                           var _loc7_:* = new XMLList("");
                           addr173:
                           for each(_loc10_ in _loc9_)
                           {
                              with(_loc10_)
                              {
                                 
                                 if(_loc15_ || param2)
                                 {
                                    if(@id == textId)
                                    {
                                       if(!(_loc16_ && _loc3_))
                                       {
                                          _loc7_[_loc8_] = _loc10_;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr173);
                           }
                           var _loc6_:* = §§checkfilter(_loc7_.language);
                           var _loc4_:* = new XMLList("");
                           addr217:
                           for each(_loc7_ in _loc6_)
                           {
                              with(_loc7_)
                              {
                                 
                                 if(!_loc16_)
                                 {
                                    if(@id == §3!`§)
                                    {
                                       if(!(_loc16_ && param1))
                                       {
                                          _loc4_[_loc5_] = _loc7_;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr217);
                           }
                           §§pop().§§slot[3] = _loc4_.toString();
                           if(_loc15_)
                           {
                              §§push(§§newactivation());
                              if(!_loc16_)
                              {
                                 §§push(§§pop().§§slot[3]);
                                 if(!_loc16_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       if(_loc15_)
                                       {
                                          §§goto(addr240);
                                       }
                                    }
                                    throw new Error("Manual text was undefinded in (language: " + this.§3!`§ + ", groupID: " + groupId + ", textID: " + textId + ")");
                                 }
                              }
                              §§goto(addr240);
                           }
                           addr240:
                           return xml.toString();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §!0§(param1:Object, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:TextFormat = null;
         if(!_loc5_)
         {
            if(param2 != "")
            {
               addr24:
               _loc3_ = new TextFormat();
               if(_loc4_ || this)
               {
                  _loc3_.font = param2;
               }
               while(true)
               {
                  while(true)
                  {
                     param1.mouseEnabled = false;
                     do
                     {
                        param1.setTextFormat(_loc3_);
                     }
                     while(!(_loc4_ || param1));
                     
                     if(_loc5_ && this)
                     {
                        break;
                     }
                     if(true)
                     {
                        return;
                     }
                     addr85:
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr24);
      }
      
      public function §"y§(param1:§,6§, param2:String, param3:String, param4:String) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[5] = §§pop();
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(!_loc18_)
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[6] = §§pop();
                           addr134:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §[" §(param1:Object) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            if(§]!v§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  _loc3_ = 0;
                  addr36:
                  loop0:
                  while(_loc3_ < param1.numLines)
                  {
                     _loc2_ = param1.getLineMetrics(_loc3_);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc2_.width > param1.width)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(true);
                           }
                           else
                           {
                              loop1:
                              while(true)
                              {
                                 addr62:
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc3_ == param1.numLines - 1)
                                    {
                                       if(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.height * param1.numLines);
                                             if(_loc5_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr100:
                                                   §§push(_loc4_ = §§pop());
                                                }
                                                if(§§pop() > param1.height)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr118:
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr51:
                                                      while(true)
                                                      {
                                                         _loc3_++;
                                                         if(_loc5_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop2;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                §§goto(addr51);
                                             }
                                             §§goto(addr100);
                                          }
                                          §§push(true);
                                          if(_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          addr142:
                                          return §§pop();
                                          addr80:
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr51);
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr36);
            }
            return false;
         }
         §§goto(addr36);
      }
      
      public function setLanguage(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!`§ = param1;
            while(true)
            {
               if(this.§3A§)
               {
                  if(_loc2_)
                  {
                     if(this.§3A§.indexOf(param1) <= -1)
                     {
                        addr19:
                        §§push(false);
                     }
                     else
                     {
                        addr19:
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                     addr56:
                     return §§pop();
                  }
                  break;
               }
               §§goto(addr19);
            }
            §§goto(addr56);
            §§push(true);
         }
         §§goto(addr19);
      }
      
      public function §2"2§() : String
      {
         return this.§3!`§;
      }
      
      public function §7!3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!l§ = param1;
         }
      }
      
      public function §0!x§() : String
      {
         return this.§,!l§;
      }
      
      public function §&"%§(param1:String) : String
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[2] = 0;
            addr94:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
   }
}
