package §_-2m§
{
   public class §_-0J§
   {
       
      
      public var mName:String;
      
      public var §_-Gt§:Number;
      
      public var §_-9m§:Number;
      
      public var §_-T-§:Number;
      
      public var §_-80§:Number;
      
      public var §_-KA§:Number;
      
      public var §_-Hz§:Boolean;
      
      public var §_-Oh§:Number;
      
      public var §_-Di§:Number;
      
      public var §_-GA§:Number;
      
      public var §_-UR§:Boolean;
      
      public var §_-5-§:Boolean;
      
      public var §_-dg§:Array;
      
      public function §_-0J§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            super();
            if(_loc14_)
            {
               this.mName = param1;
               this.§_-Gt§ = param4;
            }
            this.§_-9m§ = param5;
            if(!(_loc15_ && param3))
            {
               addr35:
               this.§_-T-§ = param3;
            }
            §§push(this);
            §§push(param2);
            if(_loc14_ || param3)
            {
               §§push(§§pop() / 1000);
            }
            §§pop().§_-80§ = §§pop();
            if(!_loc15_)
            {
               this.§_-UR§ = param6;
               if(!(_loc15_ && this))
               {
                  this.§_-5-§ = param7;
               }
               §§push(this);
               if(_loc14_)
               {
                  §§push(param8);
                  if(!_loc15_)
                  {
                     if(§§pop() != 0)
                     {
                        addr80:
                        §§push(param8);
                        if(!(_loc15_ && param1))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc14_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(Number(1));
                     }
                  }
                  §§pop().§_-KA§ = §§pop();
                  if(!_loc15_)
                  {
                     this.§_-Hz§ = param9;
                     if(_loc14_)
                     {
                        §§goto(addr102);
                     }
                     §§goto(addr112);
                  }
                  addr102:
                  this.§_-Oh§ = param10;
                  if(_loc14_ || param2)
                  {
                     addr112:
                     this.§_-Di§ = param11;
                  }
                  this.§_-GA§ = param12;
                  if(!(_loc15_ && param1))
                  {
                     addr132:
                     this.§_-dg§ = param13;
                  }
                  return;
               }
               §§goto(addr80);
            }
            §§goto(addr132);
         }
         §§goto(addr35);
      }
      
      public function §_-Q5§() : String
      {
         return this.mName;
      }
      
      public function §_-JK§() : Number
      {
         return this.§_-Gt§;
      }
      
      public function §_-4x§() : Number
      {
         return this.§_-9m§;
      }
      
      public function §_-0F§() : Number
      {
         return this.§_-80§;
      }
      
      public function §_-cb§() : Boolean
      {
         return this.§_-UR§;
      }
   }
}
