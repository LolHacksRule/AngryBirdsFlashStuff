package §?b§
{
   import §5!@§.Texture;
   import §9W§.§6!0§;
   
   public class §;]§
   {
       
      
      private var §15§:§6!0§;
      
      private var §0^§:Number;
      
      public function §;]§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && this))
            {
               this.§15§ = new §6!0§(param1);
               if(_loc3_ || this)
               {
                  addr49:
                  this.§0^§ = param2;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function get image() : §6!0§
      {
         return this.§15§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§0^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§15§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr43:
                     this.§15§.dispose();
                     if(!_loc1_)
                     {
                        addr46:
                        this.§15§ = null;
                     }
                  }
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr46);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§0^§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§0^§ = §§pop();
         }
      }
      
      public function §6!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§0^§ = param1;
         }
      }
      
      public function §;a§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§15§.texture = param1;
         }
      }
   }
}
