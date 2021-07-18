package §'K§
{
   public class §%!4§
   {
       
      
      protected var §-!9§:Number = 0.0;
      
      protected var §'!D§:Number = 0.0;
      
      protected var §1A§:Function = null;
      
      protected var §!y§:Boolean = true;
      
      protected var §#"§:Boolean = true;
      
      protected var §<!,§:Boolean = true;
      
      public function §%!4§()
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
         if(_loc2_ || _loc2_)
         {
            this.§'!D§ = param1;
            loop0:
            do
            {
               if(param1 < 0)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        this.§'!D§ = 0;
                     }
                     addr81:
                  }
                  loop1:
                  while(true)
                  {
                     addr28:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§'!D§);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(-§§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop() * 1000);
                           }
                        }
                        §§pop().§-!9§ = §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr28);
            }
            while(_loc3_ && this);
            
            return;
         }
         §§goto(addr81);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §&!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!y§ = param1;
         }
      }
      
      public function set §`j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§#"§ = param1;
         }
      }
      
      public function get §`j§() : Boolean
      {
         return this.§#"§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.isCompleted)
            {
               if(!_loc2_)
               {
                  addr29:
                  this.§1A§ = param1;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function set § i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§<!,§ = param1;
         }
      }
      
      public function get § i§() : Boolean
      {
         return this.§<!,§;
      }
   }
}
