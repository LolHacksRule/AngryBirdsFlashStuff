package §;!E§
{
   public class §'`§
   {
       
      
      public var mName:String;
      
      public var §<!§:Number;
      
      public var §2j§:Number;
      
      public var §^!7§:Number;
      
      public var §?!A§:Number;
      
      public var §,&§:Number;
      
      public var §4!&§:Boolean;
      
      public var §8%§:Number;
      
      public var §;1§:Number;
      
      public var §%!E§:Number;
      
      public var §8!$§:Boolean;
      
      public var §'!E§:Boolean;
      
      public var §82§:Boolean;
      
      public var §;'§:Array;
      
      public var §'A§:Boolean;
      
      public var §-!,§:String;
      
      public var §"!>§:String;
      
      public function §'`§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         super();
         loop0:
         while(true)
         {
            this.mName = param1;
            loop1:
            while(true)
            {
               this.§<!§ = param4;
               this.§2j§ = param5;
               while(true)
               {
                  this.§^!7§ = param3;
                  while(_loc19_)
                  {
                     §§push(this);
                     §§push(param2);
                     if(_loc19_)
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§pop().§?!A§ = §§pop();
                     while(true)
                     {
                        this.§8!$§ = param6;
                        loop5:
                        while(true)
                        {
                           this.§82§ = param7;
                           loop6:
                           while(true)
                           {
                              §§push(this);
                              if(_loc19_)
                              {
                                 §§push(param8);
                                 if(_loc19_ || param2)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr136:
                                       §§push(param8);
                                       if(_loc19_ || param3)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc19_ || this)
                                          {
                                             addr152:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(Number(1));
                                    }
                                    §§pop().§,&§ = §§pop();
                                    while(true)
                                    {
                                       this.§4!&§ = param9;
                                       continue loop6;
                                       addr54:
                                       this.§'!E§ = param17;
                                       if(_loc19_ || this)
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr136);
                           }
                        }
                     }
                     this.§"!>§ = param16;
                     if(_loc19_)
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
                  if(!(_loc19_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr73);
               }
            }
         }
      }
      
      public function §>S§() : String
      {
         return this.mName;
      }
      
      public function §=v§() : Number
      {
         return this.§<!§;
      }
      
      public function § _§() : Number
      {
         return this.§2j§;
      }
      
      public function §&u§() : Number
      {
         return this.§?!A§;
      }
      
      public function §<&§() : Boolean
      {
         return this.§8!$§;
      }
   }
}
