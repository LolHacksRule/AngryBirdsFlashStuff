package §9N§
{
   import §2!-§.Texture;
   import §`a§.§>?§;
   
   public class §>!%§
   {
       
      
      private var §<^§:§>?§;
      
      private var §1!!§:Number;
      
      public function §>!%§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§<^§ = new §>?§(param1);
            while(!_loc3_)
            {
               this.§1!!§ = param2;
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      public function get image() : §>?§
      {
         return this.§<^§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§1!!§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<^§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr69:
                     this.§<^§.dispose();
                     do
                     {
                        this.§<^§ = null;
                     }
                     while(!_loc1_);
                     
                     addr70:
                  }
                  §§goto(addr70);
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.§1!!§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§1!!§ = §§pop();
         }
      }
      
      public function §[!J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1!!§ = param1;
         }
      }
      
      public function §1Z§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<^§.texture = param1;
         }
      }
   }
}
