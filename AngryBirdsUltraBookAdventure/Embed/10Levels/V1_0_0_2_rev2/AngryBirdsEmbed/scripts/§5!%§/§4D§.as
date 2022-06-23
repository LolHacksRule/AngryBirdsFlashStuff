package §5!%§
{
   public class §4D§
   {
       
      
      public var mName:String;
      
      public var §>!D§:Number;
      
      public var §=j§:Number;
      
      public var §,X§:Number;
      
      public var §6;§:Number;
      
      public var §!!%§:Number;
      
      public var §^!?§:Boolean;
      
      public var §2L§:Number;
      
      public var §[!4§:Number;
      
      public var §4j§:Number;
      
      public var §[p§:Boolean;
      
      public var §&%§:Boolean;
      
      public var §+b§:Boolean;
      
      public var §4!B§:Array;
      
      public var §`4§:Boolean;
      
      public var § t§:String;
      
      public var §,!B§:String;
      
      public function §4D§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_)
         {
            super();
            this.mName = param1;
            this.§>!D§ = param4;
            if(!_loc18_)
            {
               addr29:
               this.§=j§ = param5;
               if(_loc19_ || param2)
               {
                  this.§,X§ = param3;
                  §§push(this);
                  §§push(param2);
                  if(_loc19_ || param3)
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§pop().§6;§ = §§pop();
                  this.§[p§ = param6;
                  this.§+b§ = param7;
                  if(!_loc18_)
                  {
                     §§push(this);
                     if(!_loc18_)
                     {
                        §§push(param8);
                        if(_loc19_ || param1)
                        {
                           if(§§pop() != 0)
                           {
                              addr85:
                              §§push(param8);
                              if(!_loc18_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc19_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(Number(1));
                           }
                        }
                        §§pop().§!!%§ = §§pop();
                        if(_loc19_)
                        {
                           this.§^!?§ = param9;
                        }
                        this.§2L§ = param10;
                        if(_loc19_ || param1)
                        {
                           this.§[!4§ = param11;
                           if(!(_loc18_ && param3))
                           {
                              this.§4j§ = param12;
                              if(_loc19_ || param2)
                              {
                                 this.§4!B§ = param13;
                                 addr130:
                              }
                              this.§`4§ = param14;
                              if(_loc19_)
                              {
                                 this.§ t§ = param15;
                                 if(_loc19_ || this)
                                 {
                                    addr158:
                                    this.§,!B§ = param16;
                                    if(_loc18_ && param2)
                                    {
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr171);
                           }
                           this.§&%§ = param17;
                           addr171:
                           return;
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr130);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr29);
      }
      
      public function §-y§() : String
      {
         return this.mName;
      }
      
      public function §-E§() : Number
      {
         return this.§>!D§;
      }
      
      public function §,_§() : Number
      {
         return this.§=j§;
      }
      
      public function §7O§() : Number
      {
         return this.§6;§;
      }
      
      public function §;!5§() : Boolean
      {
         return this.§[p§;
      }
   }
}
