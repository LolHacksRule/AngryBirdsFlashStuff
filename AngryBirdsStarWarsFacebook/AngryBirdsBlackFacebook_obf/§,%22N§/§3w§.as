package §,"N§
{
   import §2"Y§.§>"X§;
   import §2d§.§%$§;
   import §2d§.§;H§;
   import §?m§.§+"2§;
   import §?m§.§=!z§;
   
   public class §3w§ extends §'#E§
   {
       
      
      protected var §?4§:§>"X§;
      
      protected var §-!>§:Vector.<String>;
      
      public function §3w§(param1:§+"2§, param2:§>"X§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-!>§ = new Vector.<String>();
            do
            {
               this.§?4§ = param2;
               do
               {
                  super(param1);
               }
               while(_loc4_ && this);
               
            }
            while(!_loc3_);
            
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc5_)
         {
            if(_loc2_)
            {
               while(true)
               {
                  §§push(_loc2_[1].toLowerCase());
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  §§goto(addr66);
               }
            }
            else
            {
               §§push(param1);
            }
            var _loc3_:Array = §§pop().match(/^blocks_(.*)\.lua$/i);
            if(!_loc6_)
            {
               if(_loc3_)
               {
                  if(_loc5_ || this)
                  {
                     §§push(param1);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop().indexOf("levelgoals") < 0);
                        if(_loc5_)
                        {
                           if(!§§pop())
                           {
                              loop2:
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    super.initializeFile(param1);
                                    if(!(_loc6_ && param1))
                                    {
                                       if(_loc5_)
                                       {
                                          return;
                                          addr105:
                                       }
                                       break loop2;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 return;
                              }
                              this.§-!>§.push(§^k§(param1));
                              §§goto(addr131);
                              addr123:
                           }
                        }
                        addr160:
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                     }
                     addr142:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        §§push(§§pop().indexOf("bosses") < 0);
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr142);
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr105);
         }
         addr66:
         while(true)
         {
            this.§%!v§(_loc4_,param1);
            if(_loc5_ || param1)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §%!v§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=!z§ = null;
         if(_loc4_)
         {
            if(!§+!b§.getLevelForId(param1))
            {
               addr35:
               _loc3_ = §=!z§.§+#^§(§^k§(param2));
               if(_loc4_)
               {
                  _loc3_.name = param1;
                  if(_loc5_ && _loc3_)
                  {
                  }
                  §§goto(addr68);
               }
               §+!b§.addLevel(param1,_loc3_);
            }
            addr68:
            return;
         }
         §§goto(addr35);
      }
      
      public function get §8#;§() : int
      {
         return this.§-!>§.length;
      }
      
      public function §""d§(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc3_ || param1)
                        {
                           return this.§-!>§[param1];
                        }
                        §§push(§§pop() < this.§-!>§.length);
                        continue loop0;
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr79:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr79:
                     }
                     return null;
                     addr45:
                  }
               }
               §§goto(addr79);
            }
            addr73:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§goto(addr29);
            }
            else
            {
               §§goto(addr73);
            }
            §§goto(addr79);
         }
      }
      
      public function §'#!§() : String
      {
         return §^k§("damagefactors.lua","core");
      }
      
      public function §7"Z§() : String
      {
         return §^k§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§;H§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§%$§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§0#a§)
         {
            _loc3_ = param1.§4y§(_loc2_);
            if(!_loc5_)
            {
               if(_loc3_.name.indexOf("TEXTURE_") == 0)
               {
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  _loc3_.name = "INGAME_" + _loc3_.name;
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
         }
         if(!_loc5_)
         {
            super.addSpriteSheet(param1);
         }
      }
   }
}
