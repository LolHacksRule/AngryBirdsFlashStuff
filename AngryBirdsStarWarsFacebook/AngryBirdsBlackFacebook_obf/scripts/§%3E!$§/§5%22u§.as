package §>!$§
{
   public class §5"u§
   {
       
      
      private var §&#N§ = null;
      
      private var §"#K§ = null;
      
      private var §>"F§:Boolean = false;
      
      public function §5"u§(param1:* = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && this))
            {
               this.§"#K§ = this.§&#N§ = param1;
            }
         }
      }
      
      public function get value() : *
      {
         return this.§"#K§;
      }
      
      public function set value(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"#K§ = param1;
            do
            {
               §§push(this);
               §§push(this.§"#K§ == this.§&#N§);
               if(!_loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().§>"F§ = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §>t§() : Boolean
      {
         return this.§>"F§;
      }
      
      public function §>j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§&#N§ = this.§"#K§;
            do
            {
               this.§>"F§ = false;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §>"D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"#K§ = this.§&#N§;
            do
            {
               this.§>"F§ = false;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("");
         if(!_loc2_)
         {
            §§push(§§pop() + this.value);
            if(_loc1_)
            {
               §§push(§§pop() + " (prev \'");
               if(_loc2_)
               {
               }
               addr55:
               return §§pop() + "\')";
               addr53:
            }
            §§push(§§pop() + this.§&#N§);
            if(_loc1_)
            {
               §§goto(addr53);
            }
         }
         §§goto(addr55);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"#K§ = this.§&#N§ = null;
         }
      }
   }
}
