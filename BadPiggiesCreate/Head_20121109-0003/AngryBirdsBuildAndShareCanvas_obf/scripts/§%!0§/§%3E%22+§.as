package §%!0§
{
   import §+!-§.§7"#§;
   import §0!%§.Texture;
   
   public class §>"+§
   {
       
      
      private var §>i§:§7"#§;
      
      private var §%6§:Number;
      
      public function §>"+§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§>i§ = new §7"#§(param1);
            while(!_loc4_)
            {
               this.§%6§ = param2;
               if(_loc3_ || param1)
               {
                  return;
               }
            }
         }
      }
      
      public function get image() : §7"#§
      {
         return this.§>i§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§%6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>i§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr70:
                     this.§>i§.dispose();
                  }
                  do
                  {
                     this.§>i§ = null;
                  }
                  while(!(_loc2_ || this));
                  
                  addr50:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr50);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.§%6§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§%6§ = §§pop();
         }
      }
      
      public function §[@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%6§ = param1;
         }
      }
      
      public function § "§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§>i§.texture = param1;
         }
      }
   }
}
