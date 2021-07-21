package §9!n§
{
   public class §0e§
   {
       
      
      protected var §8!N§:Number = 0.0;
      
      protected var § V§:Number = 0.0;
      
      protected var §2S§:Function = null;
      
      protected var §4!V§:Boolean = true;
      
      protected var §,R§:Boolean = true;
      
      protected var §,!]§:Boolean = true;
      
      public function §0e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ V§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(param1 < 0)
               {
                  if(!_loc3_)
                  {
                     this.§ V§ = 0;
                     if(!(_loc3_ && param1))
                     {
                        addr63:
                        §§push(this);
                        §§push(this.§ V§);
                        if(!_loc3_)
                        {
                           §§push(-§§pop());
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() * 1000);
                           }
                        }
                        §§pop().§8!N§ = §§pop();
                     }
                  }
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §;@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!V§ = param1;
         }
      }
      
      public function set §0! §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,R§ = param1;
         }
      }
      
      public function get §0! §() : Boolean
      {
         return this.§,R§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.isCompleted)
            {
               if(_loc3_ || _loc3_)
               {
                  addr29:
                  this.§2S§ = param1;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function set §@!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!]§ = param1;
         }
      }
      
      public function get §@!d§() : Boolean
      {
         return this.§,!]§;
      }
   }
}
