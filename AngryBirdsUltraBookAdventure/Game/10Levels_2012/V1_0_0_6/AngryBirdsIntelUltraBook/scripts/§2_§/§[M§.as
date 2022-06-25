package §2_§
{
   import §4>§.Texture;
   import §7!B§.§-§;
   
   public class §[M§
   {
       
      
      private var §7a§:§-§;
      
      private var §09§:Number;
      
      public function §[M§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            do
            {
               this.§7a§ = new §-§(param1);
               do
               {
                  this.§09§ = param2;
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function get image() : §-§
      {
         return this.§7a§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§09§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§7a§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§7a§);
                     addr59:
                     addr51:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§7a§ = null;
                        }
                        while(_loc2_ && this);
                        
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr19);
                  }
               }
               addr19:
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr51);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(this.§09§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§09§ = §§pop();
         }
      }
      
      public function §+q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§09§ = param1;
         }
      }
      
      public function §@i§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7a§.texture = param1;
         }
      }
   }
}
