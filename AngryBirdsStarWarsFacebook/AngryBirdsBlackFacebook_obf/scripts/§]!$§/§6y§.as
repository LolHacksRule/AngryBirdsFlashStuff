package §]!$§
{
   public class §6y§
   {
      
      public static const §8"@§:String = "none";
      
      public static const §5z§:String = "run";
      
      public static const §>]§:String = "in";
      
      public static const §;X§:String = "out";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8"@§ = "none";
            while(true)
            {
               §5z§ = "run";
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §>]§ = "in";
                     do
                     {
                        §;X§ = "out";
                     }
                     while(_loc2_);
                     
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      private var §2"F§:String;
      
      private var §6!!§:String;
      
      private var §!!p§:String;
      
      private var §%#5§:String;
      
      private var §;"-§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §6y§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§2"F§ = param1;
               do
               {
                  this.§;"-§ = param4;
                  loop2:
                  do
                  {
                     this.§!!p§ = param2;
                     while(true)
                     {
                        this.§%#5§ = param3;
                        while(_loc8_ || param3)
                        {
                           this.loop = param5;
                           loop5:
                           do
                           {
                              this.stageQuality = param6;
                              while(_loc8_)
                              {
                                 this.§8!L§();
                                 if(_loc8_ || param2)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                           while(_loc7_ && this);
                           
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!_loc8_);
                  
               }
               while(!(_loc8_ || param1));
               
            }
         }
      }
      
      public function get startLabel() : String
      {
         return this.§2"F§;
      }
      
      public function set startLabel(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2"F§ = param1;
         }
         do
         {
            this.§8!L§();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§6!!§;
      }
      
      public function get §%#N§() : String
      {
         return this.§!!p§;
      }
      
      public function set §%#N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!p§ = param1;
         }
      }
      
      public function get §`"i§() : String
      {
         return this.§%#5§;
      }
      
      public function set §`"i§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%#5§ = param1;
         }
      }
      
      public function get type() : String
      {
         return this.§;"-§;
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§;"-§ = param1;
            do
            {
               this.§8!L§();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      protected function §8!L§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!!§ = "";
         }
         loop0:
         while(true)
         {
            §§push(this.§;"-§);
            loop1:
            while(true)
            {
               §§push(§§pop() == §8"@§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop() == "");
                        continue loop0;
                        if(_loc2_ || this)
                        {
                           continue;
                        }
                        addr118:
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                        addr118:
                     }
                     var _loc1_:* = this.§;"-§;
                     if(!_loc3_)
                     {
                        §§push(§5z§);
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr141:
                                    §§push(0);
                                    if(_loc3_ && this)
                                    {
                                       addr167:
                                    }
                                 }
                                 else
                                 {
                                    addr164:
                                    §§push(1);
                                    if(_loc2_)
                                    {
                                       §§goto(addr167);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§>]§);
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc2_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§goto(addr164);
                                          }
                                          §§goto(addr194);
                                       }
                                       addr170:
                                       if(§;X§ !== _loc1_)
                                       {
                                          addr194:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§6!!§ = §`#?§.§[! §();
                                                addr35:
                                                break;
                                                addr64:
                                             case 1:
                                                this.§6!!§ = §`#?§.§9!-§();
                                                if(_loc2_ || this)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr64);
                                                }
                                                break;
                                             case 2:
                                                this.§6!!§ = §`#?§.§`J§();
                                                if(!_loc3_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr35);
                                                }
                                          }
                                          return;
                                          §§push(3);
                                       }
                                       §§goto(addr194);
                                       §§push(2);
                                       if(_loc2_ || _loc2_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr194);
                           }
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr118);
            }
         }
      }
      
      public function clone() : §6y§
      {
         return new §6y§(this.§2"F§,this.§!!p§,this.§%#5§,this.§;"-§,this.loop);
      }
   }
}
