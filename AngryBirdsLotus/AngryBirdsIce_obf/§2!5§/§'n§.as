package §2!5§
{
   public class §'n§
   {
       
      
      protected var § !A§:Number = 0.0;
      
      protected var §<!C§:Number = 0.0;
      
      protected var §@F§:Function = null;
      
      protected var §+?§:Boolean = true;
      
      protected var §]_§:Boolean = true;
      
      protected var §@_§:Boolean = true;
      
      public function §'n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!C§ = param1;
            loop0:
            do
            {
               if(param1 < 0)
               {
                  while(true)
                  {
                     this.§<!C§ = 0;
                     addr80:
                     while(true)
                     {
                     }
                     addr63:
                     if(!(_loc2_ && _loc3_))
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§<!C§);
                  if(!_loc2_)
                  {
                     §§push(-§§pop());
                     if(!(_loc2_ && param1))
                     {
                        addr58:
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§ !A§ = §§pop();
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr58);
               }
            }
            while(!_loc3_);
            
         }
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §1!+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+?§ = param1;
         }
      }
      
      public function set §+&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]_§ = param1;
         }
      }
      
      public function get §+&§() : Boolean
      {
         return this.§]_§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.isCompleted)
            {
               if(!(_loc2_ && param1))
               {
                  this.§@F§ = param1;
               }
            }
         }
      }
      
      public function set §1!=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§@_§ = param1;
         }
      }
      
      public function get §1!=§() : Boolean
      {
         return this.§@_§;
      }
   }
}
