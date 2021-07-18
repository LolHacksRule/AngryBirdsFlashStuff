package §^[§
{
   import §'!A§.§-!2§;
   import §'i§.§,!1§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import flash.filters.ColorMatrixFilter;
   
   public class §9!Z§
   {
      
      private static var §1%§:§9!Z§;
       
      
      private var §2!H§:Vector.<§-!2§>;
      
      private var §?E§:§'s§;
      
      public function §9!Z§(param1:§'!K§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2!H§ = new Vector.<§-!2§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  if(!§1%§)
                  {
                     continue;
                  }
                  loop3:
                  while(true)
                  {
                     this.§?E§ = param1;
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                     addr61:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           break loop3;
                        }
                        continue loop3;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §1%§ = this;
            §§goto(addr61);
         }
      }
      
      public static function get §2=§() : §9!Z§
      {
         return §1%§;
      }
      
      private static function §'!L§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §,M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§,!1§.§2=§);
            loop0:
            while(true)
            {
               §§push(§§pop().§[!e§());
               addr193:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§1!f§("Categories");
                        addr197:
                        while(true)
                        {
                        }
                     }
                     addr194:
                  }
                  else
                  {
                     this.§0!'§("Categories");
                     while(true)
                     {
                     }
                     addr189:
                  }
                  while(true)
                  {
                     §§push(§,!1§.§2=§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §#Z§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-!2§ = null;
         for each(_loc1_ in this.§2!H§)
         {
            if(!_loc4_)
            {
               this.§];§(_loc1_,[]);
            }
         }
         if(!_loc4_)
         {
            this.§2!H§ = new Vector.<§-!2§>();
         }
      }
      
      private function §];§(param1:§-!2§, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            if(param1 is §`!T§)
            {
               if(_loc5_ || _loc3_)
               {
                  addr127:
                  _loc3_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc3_ >= (param1 as §`!T§).§"!_§.length)
                  {
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           param1.mClip.filters = param2;
                           loop3:
                           while(true)
                           {
                              param1.setEnabled(param2.length == 0);
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(param2.length <= 0)
                                    {
                                       break;
                                    }
                                    if(_loc5_ || param2)
                                    {
                                       continue;
                                    }
                                    addr51:
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       addr105:
                                       _loc3_++;
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              return;
                           }
                        }
                     }
                     addr84:
                  }
                  else
                  {
                     this.§];§((param1 as §`!T§).§"!_§[_loc3_],param2);
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr127);
      }
      
      public function §5![§(param1:§-!2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§];§(param1,[§'!L§()]);
         }
      }
      
      public function §1!f§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-!2§ = this.§?E§.getItemByName(param1);
         if(!(_loc4_ && param1))
         {
            this.§];§(_loc2_,[§'!L§()]);
         }
      }
      
      public function §0!'§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-!2§ = this.§?E§.getItemByName(param1);
         if(_loc3_)
         {
            this.§];§(_loc2_,[]);
         }
      }
      
      public function §3![§(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-!2§ = this.§?E§.getItemByName(param1);
         if(!(_loc5_ && param2))
         {
            _loc3_.setVisibility(param2);
         }
      }
   }
}
