package §4!r§
{
   public class §;s§ implements §[!m§
   {
       
      
      private var §8!o§:Number;
      
      private var §"!]§:Number;
      
      private var §9T§:Number;
      
      public function §;s§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            if(!_loc5_)
            {
               addr32:
               this.§"!]§ = param1;
               if(_loc4_ || this)
               {
                  this.§8!o§ = param2;
                  if(_loc4_ || param2)
                  {
                     this.§9T§ = param3;
                  }
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §2!R§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(Math.log(this.§8!o§ / param2) / Math.log(1 - this.§"!]§));
         if(_loc4_ || param2)
         {
            §§push(1);
            if(!(_loc3_ && param1))
            {
               §§goto(addr78);
            }
            §§push(§§pop() * (§§pop() / this.§9T§));
         }
         addr78:
         §§push(§§pop() + §§pop());
         if(!(_loc3_ && this))
         {
            §§push(1);
         }
         return §§pop();
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param3);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_ || param1)
            {
               §§push(§§pop() * Math.pow(1 - this.§"!]§,param1 / (1 / this.§9T§) - 1));
               if(_loc4_)
               {
               }
               §§goto(addr70);
            }
            §§push(param2);
            if(_loc5_)
            {
               §§push(§§pop() + param3);
            }
            §§push(§§pop() + §§pop());
         }
         addr70:
         return §§pop();
      }
   }
}
