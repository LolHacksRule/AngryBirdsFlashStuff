package §+!9§
{
   public class §'!>§
   {
       
      
      public var mName:String;
      
      public var §70§:Number;
      
      public var §[!g§:Number;
      
      public var §^!0§:Number;
      
      public var §@c§:Number;
      
      public var §#![§:Number;
      
      public var §!!f§:Boolean;
      
      public var §,!,§:Number;
      
      public var §[p§:Number;
      
      public var §;C§:Number;
      
      public var §^!8§:Boolean;
      
      public var §<C§:Boolean;
      
      public var §1u§:Boolean;
      
      public var §7>§:Array;
      
      public var §,!J§:Boolean;
      
      public var §0s§:String;
      
      public var §<f§:String;
      
      public function §'!>§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§70§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§[!g§ = param5;
                     while(true)
                     {
                        this.§^!0§ = param3;
                        addr219:
                        while(_loc19_)
                        {
                        }
                        loop8:
                        for(; _loc19_ || param2; while(!(_loc18_ && param1))
                        {
                           addr105:
                           if(_loc19_ || param1)
                           {
                              this.§,!J§ = param14;
                              while(true)
                              {
                                 if(!_loc18_)
                                 {
                                    §§goto(addr79);
                                 }
                                 §§goto(addr127);
                                 addr35:
                                 if(!(_loc19_ || param3))
                                 {
                                    continue;
                                 }
                                 if(_loc19_)
                                 {
                                    §§goto(addr44);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§^!8§ = param6;
                                 §§goto(addr105);
                              }
                              addr214:
                           }
                           §§goto(addr200);
                           loop16:
                           while(_loc19_ || param2)
                           {
                              this.§<f§ = param16;
                              while(true)
                              {
                                 if(_loc19_)
                                 {
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop16;
                              }
                              §§goto(addr219);
                           }
                        })
                        {
                           §§push(this);
                           if(!(_loc18_ && this))
                           {
                              §§push(param8);
                              if(_loc19_)
                              {
                                 if(§§pop() != 0)
                                 {
                                    addr171:
                                    §§push(param8);
                                    if(_loc19_)
                                    {
                                       addr174:
                                       §§push(Number(§§pop()));
                                       if(!_loc19_)
                                       {
                                       }
                                       addr180:
                                       §§pop().§#![§ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc18_)
                                          {
                                             continue loop0;
                                          }
                                          this.§!!f§ = param9;
                                          while(!(_loc18_ && param1))
                                          {
                                             this.§,!,§ = param10;
                                             while(true)
                                             {
                                                this.§[p§ = param11;
                                                continue loop9;
                                                addr79:
                                                if(!(_loc18_ && param3))
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             if(_loc19_ || param1)
                                             {
                                                return;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§1u§ = param7;
                                             continue loop8;
                                             §§goto(addr149);
                                          }
                                          addr149:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(Number(1));
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr171);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(param2);
            if(!(_loc18_ && param2))
            {
               §§push(§§pop() / 1000);
            }
            §§pop().§@c§ = §§pop();
            §§goto(addr214);
         }
      }
      
      public function §%!5§() : String
      {
         return this.mName;
      }
      
      public function §0!G§() : Number
      {
         return this.§70§;
      }
      
      public function §+c§() : Number
      {
         return this.§[!g§;
      }
      
      public function §=W§() : Number
      {
         return this.§@c§;
      }
      
      public function §1r§() : Boolean
      {
         return this.§^!8§;
      }
   }
}
