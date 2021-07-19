package §<!<§
{
   import §-!`§.§7!J§;
   import §0!-§.Texture;
   
   public class §1u§
   {
       
      
      private var §,!^§:§7!J§;
      
      private var §-D§:Number;
      
      public function §1u§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!_loc3_)
            {
               this.§,!^§ = new §7!J§(param1);
               if(_loc4_)
               {
                  this.§-D§ = param2;
               }
            }
         }
      }
      
      public function get image() : §7!J§
      {
         return this.§,!^§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§-D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§,!^§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr42:
                     this.§,!^§.dispose();
                     if(!_loc2_)
                     {
                        addr45:
                        this.§,!^§ = null;
                     }
                  }
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr45);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§-D§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§-D§ = §§pop();
         }
      }
      
      public function §^2§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-D§ = param1;
         }
      }
      
      public function §?O§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!^§.texture = param1;
         }
      }
   }
}
