package §^!k§
{
   import §&!<§.§>!V§;
   import §1" §.§!!2§;
   import §=!7§.§6W§;
   import §@y§.§0"4§;
   import flash.filters.ColorMatrixFilter;
   
   public class §&!T§
   {
      
      private static var §+!u§:§&!T§;
       
      
      private var §=!5§:Vector.<§0"4§>;
      
      private var §`!v§:§>!V§;
      
      public function §&!T§(param1:§return§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=!5§ = new Vector.<§0"4§>();
            loop0:
            do
            {
               super();
               loop1:
               while(true)
               {
                  if(!§+!u§)
                  {
                     if(!_loc2_)
                     {
                        §+!u§ = this;
                     }
                     continue;
                  }
                  addr29:
                  while(true)
                  {
                     this.§`!v§ = param1;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            while(!(_loc3_ || _loc3_));
            
            return;
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      public static function get §[E§() : §&!T§
      {
         return §+!u§;
      }
      
      private static function §6!r§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §=3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§!!2§.§[E§);
            loop0:
            while(true)
            {
               §§push(§§pop().§]"7§());
               addr177:
               while(true)
               {
                  if(§§pop())
                  {
                     this.§@!i§("Categories");
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§!!2§.§[E§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§["&§());
                              addr152:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    this.§'"0§("ButtonCheck");
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             this.§@!h§("ButtonCheck",false);
                                             do
                                             {
                                                while(true)
                                                {
                                                   §§push(§!!2§.§[E§);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             while(_loc2_ && _loc2_);
                                             
                                             if(_loc1_ || this)
                                             {
                                                addr19:
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§'"0§("ButtonCheck");
                                                addr156:
                                                while(true)
                                                {
                                                   this.§@!h§("ButtonCheck",false);
                                                   addr140:
                                                   while(true)
                                                   {
                                                      if(_loc1_ || this)
                                                      {
                                                         §§goto(addr41);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§'"0§("Categories");
                                                         }
                                                         addr178:
                                                      }
                                                   }
                                                }
                                             }
                                             addr153:
                                          }
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                          addr181:
                                       }
                                       §§goto(addr140);
                                       addr66:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr153);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr178);
               }
            }
         }
         §§goto(addr156);
      }
      
      public function §1!T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0"4§ = null;
         for each(_loc1_ in this.§=!5§)
         {
            if(_loc4_)
            {
               this.§ v§(_loc1_,[]);
            }
         }
         if(!_loc5_)
         {
            this.§=!5§ = new Vector.<§0"4§>();
         }
      }
      
      private function § v§(param1:§0"4§, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            if(param1 is §6W§)
            {
               if(_loc5_ || param1)
               {
                  addr127:
                  _loc3_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc3_ >= (param1 as §6W§).§[z§.length)
                  {
                     loop1:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           param1.mClip.filters = param2;
                           loop3:
                           while(true)
                           {
                              param1.setEnabled(param2.length == 0);
                              for(; !_loc4_; if(!(_loc4_ && param2))
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 addr22:
                              },continue,return)
                              {
                                 if(param2.length <= 0)
                                 {
                                    §§goto(addr22);
                                 }
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    this.§=!5§.push(param1);
                                    continue;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue;
                  }
                  this.§ v§((param1 as §6W§).§[z§[_loc3_],param2);
                  while(true)
                  {
                     _loc3_++;
                     continue loop0;
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr127);
      }
      
      public function §+Z§(param1:§0"4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§ v§(param1,[§6!r§()]);
         }
      }
      
      public function §'"0§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0"4§ = this.§`!v§.getItemByName(param1);
         if(_loc3_ || param1)
         {
            this.§ v§(_loc2_,[§6!r§()]);
         }
      }
      
      public function §@!i§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0"4§ = this.§`!v§.getItemByName(param1);
         if(!_loc4_)
         {
            this.§ v§(_loc2_,[]);
         }
      }
      
      public function §@!h§(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0"4§ = this.§`!v§.getItemByName(param1);
         if(_loc4_ || _loc3_)
         {
            _loc3_.setVisibility(param2);
         }
      }
   }
}
