package §5!V§
{
   import §7R§.Texture;
   import §default§.§=!Z§;
   
   public class §3x§
   {
       
      
      private var §2u§:§=!Z§;
      
      private var §^!F§:Number;
      
      public function §3x§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§2u§ = new §=!Z§(param1);
               §§goto(addr59);
            }
         }
         addr59:
         while(true)
         {
            this.§^!F§ = param2;
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get image() : §=!Z§
      {
         return this.§2u§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§^!F§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§2u§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§2u§);
                     addr64:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§2u§ = null;
                        }
                        while(!_loc1_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr62:
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr62);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§^!F§);
            if(_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§^!F§ = §§pop();
         }
      }
      
      public function § O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!F§ = param1;
         }
      }
      
      public function §7!X§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2u§.texture = param1;
         }
      }
   }
}
