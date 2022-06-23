package §%$§
{
   public class §"r§
   {
       
      
      public var mName:String;
      
      public var §0w§:Number;
      
      public var §%!#§:Number;
      
      public var §#!A§:Number;
      
      public var §4p§:Number;
      
      public var §=!%§:Number;
      
      public var §"V§:Boolean;
      
      public var §"z§:Number;
      
      public var §`!A§:Number;
      
      public var §,k§:Number;
      
      public var §[!C§:Boolean;
      
      public var §>&§:Boolean;
      
      public var §&E§:Boolean;
      
      public var §;A§:Array;
      
      public var §`=§:Boolean;
      
      public var §#!<§:String;
      
      public var §1!1§:String;
      
      public function §"r§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_)
         {
            super();
            this.mName = param1;
            this.§0w§ = param4;
            if(!_loc18_)
            {
               addr29:
               this.§%!#§ = param5;
               if(_loc19_ || param2)
               {
                  this.§#!A§ = param3;
                  §§push(this);
                  §§push(param2);
                  if(_loc19_ || param3)
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§pop().§4p§ = §§pop();
                  this.§[!C§ = param6;
                  this.§&E§ = param7;
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
                        §§pop().§=!%§ = §§pop();
                        if(_loc19_)
                        {
                           this.§"V§ = param9;
                        }
                        this.§"z§ = param10;
                        if(_loc19_ || param1)
                        {
                           this.§`!A§ = param11;
                           if(!(_loc18_ && param3))
                           {
                              this.§,k§ = param12;
                              if(_loc19_ || param2)
                              {
                                 this.§;A§ = param13;
                                 addr130:
                              }
                              this.§`=§ = param14;
                              if(_loc19_)
                              {
                                 this.§#!<§ = param15;
                                 if(_loc19_ || this)
                                 {
                                    addr158:
                                    this.§1!1§ = param16;
                                    if(_loc18_ && param2)
                                    {
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr171);
                           }
                           this.§>&§ = param17;
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
      
      public function §2!F§() : String
      {
         return this.mName;
      }
      
      public function §'t§() : Number
      {
         return this.§0w§;
      }
      
      public function §@1§() : Number
      {
         return this.§%!#§;
      }
      
      public function §7§() : Number
      {
         return this.§4p§;
      }
      
      public function §?!!§() : Boolean
      {
         return this.§[!C§;
      }
   }
}
